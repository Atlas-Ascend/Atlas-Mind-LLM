# ATLAS-MIND-WEB-PERSISTENCE-BINDING-005

Status: PREPARED / NOT YET PROMOTED
Date: 2026-09-13
Parent: `ATLAS-MIND-3.0-W00` / issue #9
Standard: `COMMAND_TO_PROOF_FINISH_STANDARD_004`

## Defect discovered by the frozen acceptance harness

The first real production Wave 00 continuity run reached the actual `atlasmind.global/register` UI and failed closed at regular-user registration. The UI returned `Failed to create account!`; no model, governed execution, restart, or recall step was allowed to run after the failed identity/persistence gate.

This is a real product defect in the existing persistent regular-user path, not a harness failure.

## Existing ownership separation

The Estate already contains two Atlas-named Neon projects created on 2026-08-31:

- `atlas-mind-command-center` — `ancient-mud-00515851`;
- `atlas-mind-commercial` — `blue-silence-13723131`.

Existing forensic Build Truth proves that `atlas-mind-command-center`, specifically branch `estate-runtime-presence-v1`, owns the operational runtime ledger with estate runs/events/proofs/THOTH runtime memory. It is not an empty web-account store and must not be polluted with the unrelated public/commercial User/Chat schema merely to close Wave 00.

The prior operational audit explicitly recorded the public Atlas web application's database binding as `NOT_ESTABLISHED`.

Therefore this convergence repair assigns the **existing `atlas-mind-commercial` Neon project** as the canonical hosted PostgreSQL adapter for Atlas Mind public/commercial web identity and conversation persistence. This creates no new database product or architecture; it fills an unowned binding using the existing purpose-specific Neon project while preserving the runtime ledger boundary.

## Canonical responsibility after promotion

`atlas-mind-commercial` / `blue-silence-13723131` owns only the hosted Atlas web persistence domain required by the existing Next.js schema:

- regular User identity/password hash;
- Chat ownership/title/visibility/lastContext;
- Message / Message_v2;
- Vote / Vote_v2;
- Document;
- Suggestion;
- Stream.

It does not replace THOTH runtime memory, ProofGrid, the runtime ledger, JANUS authority, GA-NIF, or EDEN.

## Existing source contract repaired

`nextjs-ai-chatbot/lib/db/queries.ts` historically initializes `postgres(process.env.POSTGRES_URL!)` while current platform integrations may expose the standard `DATABASE_URL` name.

Candidate repair commit `9c7fafe34a498f9f22ff88c337fc81fe22932b57` normalizes the existing adapter contract before the query client initializes:

- use existing `POSTGRES_URL` when present;
- otherwise map existing `DATABASE_URL` into the legacy `POSTGRES_URL` consumer;
- if neither exists, report only `ATLAS_DB_URL_SOURCE=UNBOUND`;
- never log or commit the connection string.

## Schema qualification — TEMPORARY BRANCH PASS

Neon migration `98c3ee6f-7df7-4d1a-934b-43c9453c2547` prepared the current existing Atlas web schema on temporary branch `br-orange-paper-aeu6itnz`, parent `br-polished-boat-aesc3m08`, database `neondb`.

Observed on temporary branch:

- all nine current web tables present: `User`, `Chat`, `Message`, `Vote`, `Message_v2`, `Vote_v2`, `Document`, `Suggestion`, `Stream`;
- synthetic User insert PASS;
- FK-linked Chat insert PASS;
- FK-linked Message_v2 insert PASS;
- read-after-write returned exact marker `WAVE00_SCHEMA_PROBE` PASS;
- probe rows were deleted after verification.

The production/default branch has NOT been mutated. Neon provider policy requires explicit user approval before `complete_database_migration` may apply this prepared migration.

## Remaining binding gate

After schema promotion, Vercel project `nextjs-ai-chatbot` (`prj_0xRX168obhvBOZwIpk8YawguXMkB`) must bind its production persistence environment to this existing Neon database without exposing credentials. The available Vercel connector does not expose an environment-variable mutation operation, so this binding cannot be silently fabricated by the agent.

Once the existing DB is bound, the exact already-active Wave 00 Playwright harness on `Atlas-Mind-LLM/main` must be re-run. Only a real PASS through regular signup -> authenticated inference -> governed execution/proof/memory -> full browser-process restart -> re-auth -> same-chat reload -> exact marker recall/continue can close Wave 00.
