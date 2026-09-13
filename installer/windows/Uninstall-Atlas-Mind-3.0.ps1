[CmdletBinding(SupportsShouldProcess=$true)]
param(
    [string]$InstallRoot = (Join-Path $env:LOCALAPPDATA 'GhostAtlas\AtlasMind3'),
    [switch]$PreserveProof
)
Set-StrictMode -Version Latest
$ErrorActionPreference='Stop'
$desktop = [Environment]::GetFolderPath('Desktop')
$startMenuBase = [Environment]::GetFolderPath('StartMenu')
$startMenu = if ($startMenuBase) { Join-Path $startMenuBase 'Programs\Ghost Atlas' } else { $null }
$shortcuts = @()
if ($desktop) { $shortcuts += (Join-Path $desktop 'Atlas Mind.url') }
if ($startMenu) { $shortcuts += (Join-Path $startMenu 'Atlas Mind.url') }
foreach ($p in $shortcuts) {
    if (Test-Path -LiteralPath $p) { Remove-Item -LiteralPath $p -Force }
}
if (Test-Path -LiteralPath $InstallRoot) {
    if ($PreserveProof) {
        $proof = Join-Path $InstallRoot 'proof'
        $parent = [IO.Path]::GetDirectoryName($InstallRoot)
        $preserve = Join-Path $parent ('AtlasMind3-proof-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
        if (Test-Path -LiteralPath $proof) { Copy-Item -LiteralPath $proof -Destination $preserve -Recurse -Force }
    }
    Remove-Item -LiteralPath $InstallRoot -Recurse -Force
}
Write-Host 'ATLAS_MIND_UNINSTALL=PASS'
