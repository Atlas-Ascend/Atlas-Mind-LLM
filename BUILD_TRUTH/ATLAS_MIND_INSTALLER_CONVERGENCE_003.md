# ATLAS-MIND-INSTALLER-CONVERGENCE-003

## Current state

Wave 00 model gates are already proven by Atlas-Mind-LLM #5:
real Neon inference; model-selected `executeAtlasObjective`; Vercel OIDC; JANUS `fallback=false`; `runtime.sha256`; ProofGrid receipt; THOTH commit; second-pass grounded model synthesis.

Packaging archaeology found:
- orphan Vercel project `atlas-assistant-install`: not Git-linked; its old Next.js 15.5.2 build completed but deployment was rejected by Vercel's vulnerable-framework gate;
- recovered Atlas Mind V3 `0.2.0-IRONCLAD`: robust Windows packaging/recovery lineage;
- the old IRONCLAD WinForms shell is deliberately network-free and predates GA-NIF, so it is preserved, not promoted as the current model client.

## Canonical repair

The current Wave 00 production mode is cloud-hosted. The repaired installer therefore packages the **existing hosted Atlas Mind product**, rather than inventing a second client.

It salvages the IRONCLAD packaging law:
exclusive lock → staging → deterministic candidate → SHA-256 → live health probe → immutable release → atomic promotion → LKG → rollback → proof receipt.

Installed primary entrypoint:
`https://atlasmind.global/try`

Status contract:
`https://atlasmind.global/api/atlas/v1/status`

No provider/operator secret is embedded.

The historical EDEN/Cali “next campaign” seed is not present or armed.

## Qualification

`.github/workflows/atlas-mind-wave00-windows.yml` must pass on `windows-latest` and prove:
1. fresh install;
2. persisted receipt + LKG from a separate PowerShell process;
3. primary shortcut binding to `atlasmind.global/try`;
4. hosted status reports Atlas + GA-NIF live and processor `BOUND_RESPONSIVE`;
5. second install creates a rollback/LKG archive;
6. proof pack uploaded.

## Boundary

A green Windows package workflow proves current packaging/installability and live hosted-model binding. It does not replace the production model-native proof from #5. Interactive clean-machine browser continuity remains a separate acceptance observation if not exercised by the workflow.
