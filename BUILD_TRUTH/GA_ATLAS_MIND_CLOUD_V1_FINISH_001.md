# GA-ATLAS-MIND-CLOUD-V1-FINISH-001

## Status
FROZEN DEFINITION OF FINISHED — EXECUTION CAMPAIGN

Frozen: 2026-09-13
Authority: Architect → JANUS PRIME
Mode: CONVERGENCE ONLY / CLOUD-FIRST / EVIDENCE-FIRST / FAIL-CLOSED

This document freezes the finish line for the current Atlas Mind cloud V1. The finish line MUST NOT move during this campaign. Work discovered outside this boundary is backlog, not a reason to redefine completion.

## Canonical finish target

The target is the existing Build Truth milestone **ATLAS-CONTINUOUS**: a production cloud vertical slice in which a user can converse with Atlas Mind, submit a bounded action from the normal Atlas surface, receive a governed execution result, and inspect durable proof/memory lineage.

Canonical cloud providers for this phase:
- Base44 — operator/app projection
- Neon — durable cloud state and model gateway
- GitHub — source, CI, Build Truth, change lineage
- Vercel — Atlas Mind web surface and workload OIDC
- Render — persistent runtime, JANUS-gated execution and workers
- monday.com — human work/campaign control

Local EDEN/Ollama, phones, GAIA, ARK, and physical nodes are explicitly non-blocking for this V1.

## Definition of FINISHED

Atlas Mind Cloud V1 is FINISHED only when all gates below are true at the same production revision set:

### F01 — Canonical web surface
- `https://atlasmind.global` is production READY.
- Required public routes from `.atlas-finish-intent.md` resolve without 5xx/404 unless intentionally redirected.
- Core routes `mind`, `commands`, `research`, `technology`, `status` identify their real authority boundaries.
- No control claims execution without runtime evidence.

### F02 — Normal cognition path
- The normal Atlas conversation path uses the canonical GA-NIF cloud processor through Vercel workload identity → Render → Neon AI Gateway.
- It does not require Vercel AI Gateway billing to converse.
- A production normal-path turn returns non-empty model-generated text and records the actual model/runtime.

### F03 — Durable conversation state
- Authenticated conversation/session state persists in the configured cloud database.
- Hidden model context is never promoted as authoritative memory.
- A subsequent turn can be reconstructed from persisted messages.

### F04 — Model-to-action boundary
- Explicit action intent may produce a bounded model-selected action/step plan.
- Maximum autonomous action budget is bounded.
- Destructive/high-risk intent fails closed.
- Deterministic capability selection and JANUS remain authoritative; the model cannot grant itself capabilities.

### F05 — Secure workload identity
- Browser never receives JANUS or processor secrets.
- Vercel server workload uses scoped OIDC into Render.
- Render verifies the intended production workload identity.
- Every state-changing run reaches JANUS and records an authorization decision; fallback authorization is not accepted as proof.

### F06 — Correlation lineage
- Per-step runtime correlation IDs are valid UUIDs.
- Parent/step lineage is metadata, not an invalid overloaded correlation ID.
- Correlation remains consistent through command, runtime, proof and memory evidence.

### F07 — Packet/Workforce handoff
- The production action path creates or binds a real Packet OS packet representation rather than merely naming a run phase `PACKETIZED`.
- The packet has objective, acceptance/evidence requirements, correlation/run lineage and workforce assignment.
- Packet truth is persisted durably in Neon or through the canonical Packet OS persistence adapter.
- One packet per bounded V1 action is sufficient; one-to-many decomposition is not a V1 blocker unless the action itself requires multiple bounded steps.

### F08 — Governed execution
- A safe production command is dispatched to a real worker.
- Worker identity is observed.
- DevOS, SECA and Medusa gates return PASS in the verified path.
- No success state is emitted before execution evidence exists.

### F09 — ProofGrid
- At least one durable proof receipt exists for the exact run.
- Receipt binds run ID, correlation ID, capability and serialized result digest.
- Digest is independently recomputable from receipt bytes.

### F10 — THOTH memory
- The exact ProofGrid receipt receives a THOTH durable acknowledgement.
- Memory acknowledgement binds run ID, proof ID and digest.
- Memory state is `COMMITTED` before Atlas promotes execution truth.

### F11 — Re-entry and grounded synthesis
- Verified execution evidence returns to Atlas Mind.
- A model synthesis turn is grounded in the returned IDs/digests and does not invent evidence.
- Atlas response distinguishes verified fact from inference/proposal/unknown.

### F12 — Failure truth
- Processor/JANUS/runtime/worker/proof/memory failures return explicit non-success states.
- Zero-proof completion cannot be promoted to success.
- Timeouts are bounded.
- Temporary proof interfaces are removed after use.

### F13 — Observability
- A run can be traced from interface → correlation → packet → worker → proof → THOTH acknowledgement.
- Health/status surfaces expose processor/runtime state without asserting unobserved physical nodes.
- Production errors are inspectable through Vercel/Render logs.

### F14 — Provider role projection
- Neon contains provider/runtime state.
- GitHub contains canonical code and closure receipt.
- monday.com contains campaign status/receipt.
- Base44 ODIN.FORGE is verified as an operator projection and does not impersonate execution authority.

### F15 — Quality gates
- Next.js production build passes.
- Atlas agentic/correlation contract tests pass.
- Execution Fabric build/tests pass at deployed runtime revision.
- Existing authorization/proof integrity checks remain fail-closed.

### F16 — Rollback and cleanup
- Previous known-good production revision remains identifiable.
- One-time canary/proof routes are removed and return 404 after proof capture.
- No secret is committed to GitHub or browser storage.

### F17 — Command-to-Prove final acceptance
A final acceptance command must produce a receipt set containing at minimum:
- production web deployment revision
- model/provider/runtime identity
- action decision or bounded intent
- packet ID/representation
- run ID
- correlation ID
- JANUS decision ID with `fallback=false`
- worker identity
- selected capability
- ProofGrid proof ID + digest
- THOTH memory ID + `COMMITTED`
- final model synthesis tied to exact evidence
- provider-control receipts in GitHub + monday.com

Only after F01–F17 pass may the campaign be marked `PROMOTED`.

## Explicit non-goals — do not move the finish line

The following are NOT required for this V1:
- provider-native function-calling protocol specifically; validated structured action selection is acceptable
- local EDEN/Ollama production dependency
- physical JANUS/ODIN/GAIA/ARK availability
- arbitrary shell execution
- destructive autonomous action
- self-modifying/self-promoting architecture
- Phase-4 IDE/terminal/research productization
- every future model/provider
- unlimited autonomous step counts
- multi-packet fanout when one bounded packet represents the accepted action

## Command-to-Prove standard — effective now

Every material implementation command in this campaign follows:
1. **COMMAND** — freeze objective and acceptance.
2. **DISCOVER** — identify the canonical existing owner before changing anything.
3. **PATCH** — make the smallest convergent change; no replacement architecture.
4. **BUILD** — compile/lint/schema-check as applicable.
5. **DEPLOY** — deploy the canonical production lineage.
6. **EXECUTE** — exercise the real production path, not mocks/docs.
7. **RECEIPT** — capture IDs, revisions, result bytes/digests and state transitions.
8. **VERIFY** — independently read back proof/state where possible.
9. **CLEAN** — remove temporary proof surfaces/secrets/test bypasses.
10. **PROMOTE** — update Build Truth only after prior stages pass.

A command is not complete merely because code was written or a deployment is `READY`.

## One-session sprint campaign

### Sprint 00 — Freeze + baseline
- S00.01 freeze this document and campaign ID
- S00.02 capture current GitHub/Vercel/Render/Neon/Base44/monday owners
- S00.03 classify current gates PASS/PARTIAL/FAIL
- S00.04 open one canonical campaign issue

### Sprint 01 — Normal cognition convergence
- S01.01 inspect normal `/api/chat` model dependency
- S01.02 inspect canonical `/api/atlas/operator` GA-NIF path
- S01.03 remove normal-path dependency on blocked Vercel AI Gateway
- S01.04 preserve chat persistence/history semantics
- S01.05 return actual Neon model/runtime metadata
- S01.06 production build
- S01.07 production normal conversation canary

### Sprint 02 — Agentic execution hardening
- S02.01 port UUID-per-step fix from existing hardened lineage
- S02.02 preserve parent correlation metadata
- S02.03 require production workload identity
- S02.04 require MAAT PASS
- S02.05 require JANUS `janus-prime` and `fallback=false`
- S02.06 bind ProofGrid receipt bytes/digest to run/correlation/capability
- S02.07 require matching THOTH acknowledgement
- S02.08 require evidence integrity verdict
- S02.09 add/retain contract tests

### Sprint 03 — Packet OS durable binding
- S03.01 inspect canonical Packet OS contract/service
- S03.02 inspect current runtime `PACKETIZED` behavior
- S03.03 implement the smallest Packet OS persistence adapter in the canonical runtime path
- S03.04 bind packet ID to run/correlation/objective
- S03.05 bind workforce assignment
- S03.06 surface packet evidence in command-to-proof result
- S03.07 verify durable packet read-back

### Sprint 04 — Durable conversation + memory truth
- S04.01 verify chat database persistence
- S04.02 verify session ownership boundary
- S04.03 verify second-turn reconstruction
- S04.04 keep THOTH as execution-memory authority
- S04.05 label hidden model context as non-authoritative

### Sprint 05 — Web surface acceptance
- S05.01 verify every required public route
- S05.02 verify core route truth labels
- S05.03 verify `/status` runtime/model state
- S05.04 verify `/commands` does not fake controls
- S05.05 verify canonical origin `atlasmind.global`

### Sprint 06 — Six-provider control fabric
- S06.01 verify ODIN.FORGE Base44 code/runtime projection
- S06.02 verify Neon state/provider bindings
- S06.03 verify GitHub canonical lineage
- S06.04 verify Vercel production alias/revision
- S06.05 verify Render runtime + workers
- S06.06 update monday campaign control item

### Sprint 07 — Quality + security
- S07.01 Next.js production build
- S07.02 targeted Atlas contract tests
- S07.03 Execution Fabric tests/build
- S07.04 inspect production runtime errors
- S07.05 ensure no secrets in source/browser
- S07.06 ensure destructive intent remains denied

### Sprint 08 — Final normal-path command-to-prove
- S08.01 issue bounded action through normal Atlas production surface
- S08.02 model selects/constructs bounded action
- S08.03 Packet OS packet persists
- S08.04 JANUS authorizes with fallback false
- S08.05 Workforce executes
- S08.06 DevOS/SECA/Medusa qualify
- S08.07 ProofGrid receipt seals
- S08.08 THOTH commits
- S08.09 Atlas synthesizes exact returned evidence
- S08.10 independently read back durable packet/proof/memory

### Sprint 09 — Cleanup + promotion
- S09.01 remove temporary canary routes
- S09.02 verify removed routes return 404
- S09.03 capture rollback revisions
- S09.04 update canonical Build Truth from observed truth
- S09.05 close/supersede stale issues/PRs without losing history
- S09.06 write final command-to-prove receipt
- S09.07 mark F01–F17 PASS/PARTIAL/FAIL
- S09.08 promote only if every F gate is PASS

## Stop rules

The campaign stops and reports the exact remaining human-only gate only if a provider requires non-delegable consent/billing/credential authorization. Other work continues around that gate. No blocker inventory replaces implementation.

No new finish criteria may be introduced into this campaign after this freeze. New discoveries either map to F01–F17 or become post-V1 backlog.
