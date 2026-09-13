# ATLAS-MIND-INSTALLER-CONVERGENCE-003

## Current state

Wave 00 model gates are proven by Atlas-Mind-LLM #5:
real Neon inference; model-selected `executeAtlasObjective`; Vercel OIDC; JANUS `fallback=false`; `runtime.sha256`; ProofGrid receipt; THOTH commit; second-pass grounded model synthesis.

Packaging archaeology found:
- orphan Vercel project `atlas-assistant-install`: not Git-linked; its old Next.js 15.5.2 build completed but deployment was rejected by Vercel's vulnerable-framework gate;
- recovered Atlas Mind V3 `0.2.0-IRONCLAD`: robust Windows packaging/recovery lineage;
- the old IRONCLAD WinForms shell is deliberately network-free and predates GA-NIF, so it is preserved, not promoted as the current model client.

## Canonical repair

The current Wave 00 production mode is cloud-hosted. The repaired installer packages the **existing hosted Atlas Mind product**, rather than inventing a second client.

It salvages the IRONCLAD packaging law:
exclusive lock → staging → deterministic candidate → SHA-256 → live health probe → immutable release → atomic promotion → LKG → rollback → proof receipt.

Installed primary entrypoint:
`https://atlasmind.global/try`

Status contract:
`https://atlasmind.global/api/atlas/v1/status`

No provider/operator secret is embedded.

The historical EDEN/Cali “next campaign” seed is not present or armed.

## Qualification — PASS

First workflow run `34779299705` failed before any job was allocated. Root cause: the workflow referenced `runner.temp` at job-level `env`, before runner allocation. This was repaired in commit `d180430e2b8c18f24bafc5905e2cdc8abb6647ff` by deriving the temp root inside Windows steps.

Second workflow run `34779389481` completed `success` on Microsoft Windows Server 2025 (`windows-2025-vs2026`). Job `clean-machine` passed every step:
1. convergence static gate;
2. fresh install;
3. persisted receipt + LKG verification from a separate PowerShell process;
4. repeat install with one rollback archive (`ROLLBACK_ARCHIVES=1`);
5. independent live Atlas/GA-NIF probe;
6. proof pack collection/upload.

Final install receipt:
- package `3.0.0-wave00-rc1`;
- installer SHA-256 `bc7f82bf2645c567e5078b7d1bbc1d541f18f6c82fa479ae55a826215b8588d1`;
- hosted probe `PASS`;
- GA-NIF `LIVE`;
- processor `BOUND_RESPONSIVE`;
- configured model `gpt-oss-20b`;
- observed model count `34`;
- immutable release `PASS`;
- atomic promotion `PASS`;
- rollback ready `PASS`;
- shortcut install `PASS`;
- embedded cloud credentials `FALSE`;
- legacy next-campaign seed `NOT_PRESENT_NOT_PROMOTED`.

Proof artifact:
- artifact id `10324324453`;
- name `atlas-mind-wave00-windows-proof`;
- ZIP SHA-256 `d0db6463143cd7984c2d176388941cae208954594a5027fb885ee968a721c702`;
- contains final receipt, LKG, two PASS run receipts, and independent live status observation.

## Main promotion — PASS

PR #8 was merged without squashing the qualified lineage. Canonical merge commit:
`e05814fef89f50ccccac3fb203d7f41ac5b48e93`.

The merge triggered the same Windows package workflow on `main` because the release gate now protects both the convergence branch and canonical main.

Main workflow run `34779745571` completed successfully. Its `clean-machine` job passed:
- convergence static gate;
- fresh install;
- persisted receipt/LKG verification;
- repeat-install LKG/upgrade path;
- independent live Atlas GA-NIF probe;
- proof pack collection/upload.

Main proof artifact:
- artifact id `10324407898`;
- name `atlas-mind-wave00-windows-proof`;
- ZIP SHA-256 `b513ea5caba9b8128d59f1954254c2a36bf5be40c9104374199f996818fa3280`.

Therefore the Windows hosted-client package is now **merged, main-qualified, and canonically documented**. Package promotion does not close the remaining authenticated continuity gate below.

## Public distribution — PASS

The qualified package is now published through the existing Atlas Mind public site rather than a new distribution service.

Website canonical owner:
`Atlas-Ascend/nextjs-ai-chatbot`.

Release-surface PR #26 merged at:
`ebd9fc834e50124bca8c8a4335b0a05ccc9377e1`.

Production Vercel deployment:
`dpl_6r6yv142etcNrzSZUuBkS2ecKPjS` — `READY`, aliased to `atlasmind.global`.

Production build proof:
- Next.js `16.0.7`;
- compile PASS;
- TypeScript PASS;
- static generation `111/111` PASS;
- `/releases` emitted as a dedicated static route;
- deployment completed without alias error.

Live production exercise:
`https://atlasmind.global/releases` returned HTTP 200 from deployment `dpl_6r6yv142etcNrzSZUuBkS2ecKPjS` and rendered:
- `Install what has actually been qualified.`;
- `WINDOWS CI PROVEN`;
- `3.0.0-WAVE00-RC1`;
- exact installer SHA-256 `bc7f82bf2645c567e5078b7d1bbc1d541f18f6c82fa479ae55a826215b8588d1`;
- canonical raw installer download URL from `Atlas-Mind-LLM/main`;
- qualification receipt checks;
- explicit remaining authenticated restart/recall boundary.

The canonical raw installer target was independently fetched after publication and still identifies Atlas Mind 3.0, Wave 00 RC1, the hosted Atlas surface and live status endpoint.

Post-cutover runtime probe:
- Atlas HTTP 200 / `ok=true`;
- GA-NIF `LIVE`;
- processor `BOUND_RESPONSIVE`;
- configured model `gpt-oss-20b`;
- observed model count `34`;
- execution authority remains `JANUS -> Workforce -> ProofGrid -> THOTH`.

Publication tracking issue `nextjs-ai-chatbot#24` is closed `completed`.

## Boundary

This proves current Windows packaging/installability, persisted package state across processes, LKG/rollback behavior, launcher binding, live hosted-model fabric observation, main promotion, and live public distribution.

It does **not** prove the remaining interactive clean-machine lifecycle as one continuous authenticated user lineage:
install → launch → authenticated inference → THOTH/durable user memory → governed execution → receipt → browser/process restart → authenticated recall/continue.

The public `/try` surface is deliberately bounded and cannot substitute for that private/authenticated continuity gate. Source inspection of the current Auth.js owner also shows that guest identities may be local/ephemeral depending on `ATLAS_PERSISTENCE_MODE`; an ephemeral guest cannot be promoted as proof of durable user continuity. No security boundary will be weakened to force closure.
