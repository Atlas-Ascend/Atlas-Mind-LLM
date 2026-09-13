[CmdletBinding()]
param(
    [string]$InstallRoot = (Join-Path $env:LOCALAPPDATA 'GhostAtlas\AtlasMind3'),
    [string]$HostedSurface = 'https://atlasmind.global/try',
    [string]$StatusEndpoint = 'https://atlasmind.global/api/atlas/v1/status',
    [switch]$NoLaunch,
    [switch]$SkipHostedProbe,
    [switch]$KeepStaging
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

$Product = 'Atlas Mind 3.0'
$PackageVersion = '3.0.0-wave00-rc1'
$Campaign = 'ATLAS-MIND-3.0-W00'
$RunId = (Get-Date -Format 'yyyyMMdd-HHmmss') + '-' + ([Guid]::NewGuid().ToString('N').Substring(0,8))
$Stage = 'BOOTSTRAP'
$LockStream = $null
$PreviousCurrent = $null
$CurrentPromoted = $false
$HostedProbe = 'NOT_RUN'
$HostedDetail = $null
$PackageSourceRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$InstallerSha256 = (Get-FileHash -LiteralPath $MyInvocation.MyCommand.Path -Algorithm SHA256).Hash.ToLowerInvariant()

function Ensure-Directory([string]$Path) {
    if (-not (Test-Path -LiteralPath $Path -PathType Container)) {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
    }
}

function Write-JsonAtomic([string]$Path, $Value) {
    Ensure-Directory (Split-Path -Parent $Path)
    $tmp = $Path + '.tmp-' + [Guid]::NewGuid().ToString('N')
    $Value | ConvertTo-Json -Depth 12 | Set-Content -LiteralPath $tmp -Encoding UTF8
    Move-Item -LiteralPath $tmp -Destination $Path -Force
}

function Get-Sha256([string]$Path) {
    (Get-FileHash -LiteralPath $Path -Algorithm SHA256).Hash.ToLowerInvariant()
}

function New-InternetShortcut([string]$Path, [string]$Url) {
    Ensure-Directory (Split-Path -Parent $Path)
    @(
        '[InternetShortcut]'
        ('URL=' + $Url)
        'IconIndex=0'
        'HotKey=0'
        'IDList='
    ) | Set-Content -LiteralPath $Path -Encoding ASCII
}

function Probe-Atlas([string]$Endpoint) {
    $status = Invoke-RestMethod -Uri $Endpoint -Method Get -TimeoutSec 30 -Headers @{
        'Accept'='application/json'
        'User-Agent'='GhostAtlas-AtlasMind-Installer/3.0.0-wave00-rc1'
    }
    if (-not $status) { throw 'No Atlas status body returned.' }
    if ($status.ok -ne $true) { throw 'Atlas status did not report ok=true.' }
    if (-not $status.gaNif -or $status.gaNif.ok -ne $true) { throw 'GA-NIF is not LIVE.' }
    if (-not $status.gaNif.status) { throw 'GA-NIF status payload absent.' }
    if ($status.gaNif.status.processor_bound -ne $true) { throw 'GA-NIF processor is not bound.' }
    if ([string]$status.gaNif.status.processor_state -ne 'BOUND_RESPONSIVE') {
        throw ('Unexpected processor state: ' + [string]$status.gaNif.status.processor_state)
    }
    return $status
}

$ReleasesRoot = Join-Path $InstallRoot 'releases'
$CurrentRoot = Join-Path $InstallRoot 'current'
$RollbackRoot = Join-Path $InstallRoot 'rollback'
$ProofRoot = Join-Path $InstallRoot 'proof'
$RunsRoot = Join-Path $ProofRoot 'install-runs'
$StagingRoot = Join-Path $InstallRoot ('_staging\' + $RunId)
$CandidateRoot = Join-Path $StagingRoot 'candidate'
$ReleaseId = $PackageVersion + '-' + $RunId
$ReleaseRoot = Join-Path $ReleasesRoot $ReleaseId
$RunReceipt = Join-Path $RunsRoot ('PASS-' + $RunId + '.json')
$FailureReceipt = Join-Path $RunsRoot ('FAIL-' + $RunId + '.json')
$FinalReceipt = Join-Path $ProofRoot 'FINAL-INSTALL-RECEIPT.json'
$LkgPath = Join-Path $InstallRoot 'LKG.json'
$LockPath = Join-Path $env:TEMP 'GhostAtlas-AtlasMind3-W00.install.lock'

try {
    $Stage = 'LOCK'
    if (Test-Path -LiteralPath $LockPath) {
        $existingPid = $null
        try { $existingPid = [int](Get-Content -LiteralPath $LockPath -Raw) } catch {}
        if ($existingPid -and (Get-Process -Id $existingPid -ErrorAction SilentlyContinue)) {
            throw ('Another Atlas Mind installer is active (PID ' + $existingPid + ').')
        }
        Remove-Item -LiteralPath $LockPath -Force -ErrorAction Stop
    }
    $LockStream = [IO.File]::Open($LockPath,[IO.FileMode]::CreateNew,[IO.FileAccess]::Write,[IO.FileShare]::None)
    $writer = [IO.StreamWriter]::new($LockStream)
    $writer.WriteLine($PID)
    $writer.Flush()

    $Stage = 'PREFLIGHT'
    if ($env:OS -ne 'Windows_NT') { throw 'Atlas Mind Wave 00 installer requires Windows.' }
    if ([string]::IsNullOrWhiteSpace($InstallRoot)) { throw 'InstallRoot cannot be empty.' }
    foreach ($dir in @($InstallRoot,$ReleasesRoot,$RollbackRoot,$ProofRoot,$RunsRoot,$CandidateRoot)) { Ensure-Directory $dir }
    $probe = Join-Path $InstallRoot '.write-probe'
    'ATLAS_MIND_W00' | Set-Content -LiteralPath $probe -Encoding ASCII
    if ((Get-Content -LiteralPath $probe -Raw).Trim() -ne 'ATLAS_MIND_W00') { throw 'Install root write/read probe failed.' }
    Remove-Item -LiteralPath $probe -Force

    $Stage = 'CANDIDATE'
    $candidateShortcut = Join-Path $CandidateRoot 'Atlas Mind.url'
    New-InternetShortcut -Path $candidateShortcut -Url $HostedSurface
    $offlineNote = Join-Path $CandidateRoot 'OFFLINE-BOUNDARY.txt'
    @(
        'Atlas Mind 3.0 Wave 00 hosted client'
        ''
        'Canonical product: ' + $HostedSurface
        'Model authority: GA-NIF'
        'Execution authority: JANUS'
        ''
        'If the hosted surface is unavailable, this package remains installed but reports DEGRADED.'
        'No cloud credentials are embedded in this package.'
        'The historical local IRONCLAD shell remains preserved separately and is not relabeled as the hosted model client.'
    ) | Set-Content -LiteralPath $offlineNote -Encoding UTF8

    $manifest = [ordered]@{
        product = $Product
        package_version = $PackageVersion
        campaign = $Campaign
        mode = 'HOSTED_CLIENT'
        hosted_surface = $HostedSurface
        status_endpoint = $StatusEndpoint
        model_authority = 'GA-NIF'
        execution_authority = 'JANUS'
        cloud_credentials_embedded = $false
        local_shell_lineage = '0.2.0-IRONCLAD preserved; not promoted as current model client'
        legacy_next_campaign_seed = 'NOT_PRESENT_NOT_PROMOTED'
        created_at_utc = [DateTime]::UtcNow
    }
    Write-JsonAtomic -Path (Join-Path $CandidateRoot 'PRODUCT-MANIFEST.json') -Value $manifest
    $uninstallSource = Join-Path $PackageSourceRoot 'Uninstall-Atlas-Mind-3.0.ps1'
    if (Test-Path -LiteralPath $uninstallSource -PathType Leaf) {
        Copy-Item -LiteralPath $uninstallSource -Destination (Join-Path $CandidateRoot 'Uninstall-Atlas-Mind-3.0.ps1') -Force
    }

    $Stage = 'CANDIDATE_VALIDATION'
    if (-not (Test-Path -LiteralPath $candidateShortcut -PathType Leaf)) { throw 'Candidate shortcut missing.' }
    $shortcutText = Get-Content -LiteralPath $candidateShortcut -Raw
    if (-not $shortcutText.Contains('URL=' + $HostedSurface)) { throw 'Candidate shortcut URL mismatch.' }
    $candidateFiles = Get-ChildItem -LiteralPath $CandidateRoot -File | Sort-Object Name
    $hashes = [ordered]@{}
    foreach ($file in $candidateFiles) { $hashes[$file.Name] = Get-Sha256 $file.FullName }

    $Stage = 'HOSTED_PROBE'
    if ($SkipHostedProbe) {
        $HostedProbe = 'SKIPPED_BY_OPERATOR'
    } else {
        try {
            $status = Probe-Atlas -Endpoint $StatusEndpoint
            $HostedProbe = 'PASS'
            $HostedDetail = [ordered]@{
                observed_at_utc = [DateTime]::UtcNow
                fabric_state = [string]$status.gaNif.fabricState
                processor_state = [string]$status.gaNif.status.processor_state
                processor_bound = [bool]$status.gaNif.status.processor_bound
                configured_model = [string]$status.gaNif.status.configured_model
                observed_model_count = [int]$status.gaNif.status.observed_model_count
            }
        } catch {
            $HostedProbe = 'DEGRADED'
            $HostedDetail = $_.Exception.Message
        }
    }

    $Stage = 'IMMUTABLE_RELEASE'
    Ensure-Directory $ReleaseRoot
    Copy-Item -Path (Join-Path $CandidateRoot '*') -Destination $ReleaseRoot -Recurse -Force
    foreach ($name in $hashes.Keys) {
        $actual = Get-Sha256 (Join-Path $ReleaseRoot $name)
        if ($actual -ne $hashes[$name]) { throw ('Release hash mismatch: ' + $name) }
    }

    $Stage = 'ATOMIC_PROMOTION'
    $newCurrent = Join-Path $InstallRoot ('current.new.' + $RunId)
    if (Test-Path -LiteralPath $newCurrent) { Remove-Item -LiteralPath $newCurrent -Recurse -Force }
    Ensure-Directory $newCurrent
    Copy-Item -Path (Join-Path $ReleaseRoot '*') -Destination $newCurrent -Recurse -Force

    if (Test-Path -LiteralPath $CurrentRoot) {
        $PreviousCurrent = Join-Path $InstallRoot ('current.previous.' + $RunId)
        if (Test-Path -LiteralPath $PreviousCurrent) { Remove-Item -LiteralPath $PreviousCurrent -Recurse -Force }
        Move-Item -LiteralPath $CurrentRoot -Destination $PreviousCurrent -Force
    }
    Move-Item -LiteralPath $newCurrent -Destination $CurrentRoot -Force
    $CurrentPromoted = $true

    $Stage = 'ENTRYPOINTS'
    $currentShortcut = Join-Path $CurrentRoot 'Atlas Mind.url'
    $shortcutState = 'PASS'
    try {
        $desktop = [Environment]::GetFolderPath('Desktop')
        $startMenuBase = [Environment]::GetFolderPath('StartMenu')
        if ([string]::IsNullOrWhiteSpace($startMenuBase)) { throw 'Start Menu path is unavailable.' }
        $startMenu = Join-Path $startMenuBase 'Programs\Ghost Atlas'
        Ensure-Directory $startMenu
        if ($desktop) { Copy-Item -LiteralPath $currentShortcut -Destination (Join-Path $desktop 'Atlas Mind.url') -Force }
        Copy-Item -LiteralPath $currentShortcut -Destination (Join-Path $startMenu 'Atlas Mind.url') -Force
    } catch {
        $shortcutState = 'DEGRADED: ' + $_.Exception.Message
    }

    $Stage = 'PROOF'
    $receipt = [ordered]@{
        command = 'Install Atlas Mind 3.0 hosted client and bind it to the active Atlas model surface'
        execution_id = $RunId
        product = $Product
        package_version = $PackageVersion
        campaign = $Campaign
        status = 'PASS'
        installed_at_utc = [DateTime]::UtcNow
        install_root = $InstallRoot
        release_id = $ReleaseId
        release_root = $ReleaseRoot
        current_root = $CurrentRoot
        installer_sha256 = $InstallerSha256
        hosted_surface = $HostedSurface
        status_endpoint = $StatusEndpoint
        hosted_probe = $HostedProbe
        hosted_detail = $HostedDetail
        hashes = $hashes
        gates = [ordered]@{
            windows_preflight = 'PASS'
            candidate_generation = 'PASS'
            candidate_hashing = 'PASS'
            hosted_surface_probe = $HostedProbe
            immutable_release = 'PASS'
            atomic_promotion = 'PASS'
            rollback_ready = 'PASS'
            shortcut_install = $shortcutState
            cloud_credentials_embedded = 'FALSE'
            legacy_next_campaign_seed = 'NOT_PRESENT_NOT_PROMOTED'
        }
        proof_boundary = 'This receipt proves package installation, promotion, rollback readiness, launcher binding, and public GA-NIF status when hosted_probe=PASS. Model-native governed execution is proven separately by Atlas-Mind-LLM #5.'
    }
    Write-JsonAtomic -Path $RunReceipt -Value $receipt
    Write-JsonAtomic -Path $FinalReceipt -Value $receipt
    Write-JsonAtomic -Path $LkgPath -Value ([ordered]@{
        release_id = $ReleaseId
        current_root = $CurrentRoot
        hashes = $hashes
        hosted_surface = $HostedSurface
        installed_at_utc = [DateTime]::UtcNow
    })

    if ($PreviousCurrent -and (Test-Path -LiteralPath $PreviousCurrent)) {
        $archive = Join-Path $RollbackRoot ('LKG-BEFORE-' + $ReleaseId)
        Move-Item -LiteralPath $PreviousCurrent -Destination $archive -Force
        $PreviousCurrent = $null
    }

    if (-not $KeepStaging) { Remove-Item -LiteralPath $StagingRoot -Recurse -Force -ErrorAction SilentlyContinue }

    Write-Host ('ATLAS_MIND_INSTALL=PASS run=' + $RunId + ' hosted_probe=' + $HostedProbe)
    Write-Host ('RECEIPT=' + $FinalReceipt)
    if (-not $NoLaunch) { Start-Process $HostedSurface }
    exit 0
}
catch {
    $message = $_.Exception.Message
    if ($CurrentPromoted) {
        try {
            if (Test-Path -LiteralPath $CurrentRoot) { Remove-Item -LiteralPath $CurrentRoot -Recurse -Force }
            if ($PreviousCurrent -and (Test-Path -LiteralPath $PreviousCurrent)) {
                Move-Item -LiteralPath $PreviousCurrent -Destination $CurrentRoot -Force
            }
        } catch {}
    }
    try {
        Write-JsonAtomic -Path $FailureReceipt -Value ([ordered]@{
            command = 'Install Atlas Mind 3.0 hosted client'
            execution_id = $RunId
            status = 'FAIL'
            stage = $Stage
            error = $message
            observed_at_utc = [DateTime]::UtcNow
        })
    } catch {}
    Write-Error ('ATLAS_MIND_INSTALL=FAIL stage=' + $Stage + ' error=' + $message)
    exit 1
}
finally {
    if ($LockStream) { $LockStream.Dispose() }
    Remove-Item -LiteralPath $LockPath -Force -ErrorAction SilentlyContinue
}
