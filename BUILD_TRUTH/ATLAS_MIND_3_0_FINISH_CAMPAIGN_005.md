# ATLAS-MIND-3.0-FINISH-CAMPAIGN-005

Status: ACTIVE / FAIL-CLOSED
Parent: `Atlas-Mind-LLM#7`
Current gate: `ATLAS-MIND-3.0-W00` / issue #9
Standard: `COMMAND_TO_PROOF_FINISH_STANDARD_004`
Mode: CONVERGENCE ONLY

## Frozen Definition of Finished

Atlas Mind 3.0 is COMPLETE only when the existing organism proves one continuous release lifecycle:

`install -> infer -> remember -> plan -> authorize -> execute -> verify -> receipt -> restart -> recover -> continue`

across the required cloud/local/hybrid modes, with explicit degraded behavior, and when all 16 outcome classes already frozen in issue #7 have evidence-backed acceptance receipts. No new organ, repo, parallel model fabric, replacement runtime, parallel memory system, parallel installer, or replacement web surface is authorized by this campaign.

## Sprint 00 — Release Truth / Wave 00
Owner: `nextjs-ai-chatbot` + existing GA-NIF/JANUS/Workforce/ProofGrid/THOTH path.

- [x] Genuine production model inference proven.
- [x] Model-native selection/call of governed `executeAtlasObjective` proven.
- [x] Vercel OIDC -> GA-NIF -> JANUS -> Workforce -> ProofGrid -> THOTH -> grounded synthesis proven for the recorded lineage.
- [x] Existing Atlas Mind 3.0 Windows RC installer repaired/qualified/published.
- [x] Production `/releases` surface published.
- [x] Production continuity harness implemented on the existing web owner.
- [x] Harness requires regular-user registration/login rather than guest fallback.
- [x] Harness requires THOTH remember + runtime SHA-256 in one governed first turn.
- [x] Harness destroys browser process A and launches process B.
- [x] Harness requires re-authentication, user-scoped history, exact chat reload, marker recall and continuation.
- [x] Harness emits non-secret proof JSON and failure artifacts.
- [x] Stale model-selector test assumptions repaired against current UI.
- [x] GitHub runner-allocation failures classified separately from product failures.
- [ ] Existing CI/browser substrate actually allocates and executes the harness.
- [ ] One continuous regular-user lifecycle returns PASS.
- [ ] Exact PASS proof pack is read back and pinned.
- [ ] Candidate exact head promoted.
- [ ] Promoted production head re-exercised and PASS receipt pinned.
- [ ] Issue #9 closed.

Promotion rule: no later capability sprint is promoted ahead of Sprint 00 closure.

## Sprint 01 — Adaptive Model Routing
Canonical owners: Atlas Mind model policy + existing GA-NIF processor/model catalog.

Microtasks:
- [ ] Census existing model-routing policy and current model catalog adapters.
- [ ] Define the policy input contract: requested task class, latency target, cost ceiling, quality requirement, privacy mode, substrate availability, provider health.
- [ ] Map current `chat-model` / `chat-model-reasoning` aliases onto policy classes rather than hard-coded provider identities.
- [ ] Reuse GA-NIF model discovery; do not add a second model registry.
- [ ] Add deterministic route-decision receipt fields: selected model, provider, reason, alternatives considered, fallback state.
- [ ] Enforce public/work/sovereign privacy constraints before provider selection.
- [ ] Implement bounded provider/model fallback over already registered processors.
- [ ] Add fail-closed behavior when no allowed model satisfies policy.
- [ ] Test primary selection, latency fallback, quality fallback, privacy denial, provider outage fallback.
- [ ] Persist route-decision evidence through existing proof/telemetry path.
- [ ] Run cloud canary.
- [ ] Run local canary using existing local Atlas/EDEN model substrate when available.
- [ ] Run hybrid failover canary.
- [ ] Promote only after SECA/DevOS/ProofGrid qualification.

## Sprint 02 — Durable Long-Horizon Task Execution
Canonical owners: Packet OS + Workforce Spine + JANUS + existing worker fabric.

Microtasks:
- [ ] Census current Packet/Workforce task states and recovery semantics.
- [ ] Define durable Atlas task state machine using existing packet/run records: queued, authorized, running, suspended, approval-waiting, retryable, failed, completed.
- [ ] Bind Atlas conversation/task identity to canonical packet/run IDs.
- [ ] Persist checkpoints at safe boundaries.
- [ ] Implement resume from checkpoint without replaying already-proven mutations.
- [ ] Implement bounded retry policy with reason/evidence.
- [ ] Implement human approval state using existing JANUS authority boundary.
- [ ] Implement cancellation that preserves proof and partial result truth.
- [ ] Verify restart/recovery of a suspended task.
- [ ] Verify worker-loss recovery.
- [ ] Verify provider-loss recovery.
- [ ] Verify duplicate-delivery/idempotency protection.
- [ ] Emit task lifecycle events to existing command center/event stream.
- [ ] ProofGrid receipt final state and recovery lineage.

## Sprint 03 — Multimodal Atlas Identity
Canonical owner: `nextjs-ai-chatbot` interaction surface + existing file/document ingestion paths.

Microtasks:
- [ ] Inventory current text/file/image support.
- [ ] Preserve one Atlas identity/session across modalities.
- [ ] Add browser-native microphone input inside the existing composer; no second voice app.
- [ ] Add speech-to-text capability with explicit unsupported/degraded state.
- [ ] Add browser-native speech synthesis output with per-user toggle.
- [ ] Add audio-file ingestion through the existing attachment pathway where supported.
- [ ] Route images/documents through existing attachment/model context path.
- [ ] Add video/document metadata handling only through existing ingestion/capability owners.
- [ ] Prevent raw microphone audio retention by default unless policy explicitly allows it.
- [ ] Add modality provenance to message/receipt metadata.
- [ ] Test text->action, voice->action, image+text->analysis, document->analysis, audio-file->analysis.
- [ ] Verify same user/chat identity across modality switches.

## Sprint 04 — Continuous Voice / Alexa-Class Interaction
Canonical owner: existing Atlas Mind web/installable client.

Microtasks:
- [ ] Add push-to-talk baseline.
- [ ] Add optional continuous listening mode using supported browser/device APIs only.
- [ ] Define configurable Atlas wake phrase within the existing settings surface.
- [ ] Implement wake-gated transcription so pre-wake ambient speech is not sent upstream.
- [ ] Implement end-of-turn detection/debounce.
- [ ] Implement TTS response playback.
- [ ] Implement barge-in: new user speech interrupts Atlas TTS.
- [ ] Implement voice->tool handoff without bypassing JANUS.
- [ ] Surface listening/thinking/executing/speaking states.
- [ ] Provide explicit degraded state when wake/STT/TTS API is unavailable.
- [ ] Test wake->question->spoken answer.
- [ ] Test wake->governed tool->ProofGrid->spoken grounded answer.
- [ ] Test barge-in and resumed conversation.
- [ ] Test destructive command denial by voice.
- [ ] Test browser/process restart and voice continuity under the same account.

## Sprint 05 — THOTH Memory 3.0
Canonical owner: THOTH; no parallel memory database.

Microtasks:
- [ ] Census existing THOTH runtime, provenance and world-state records.
- [ ] Formalize memory classes already implied by the organism: episodic, semantic, procedural, world-state.
- [ ] Attach provenance/source/run/correlation/proof references to every durable memory class.
- [ ] Define confidence/freshness/expiry fields without replacing current ledger identity.
- [ ] Implement retrieval policy by identity, scope and task.
- [ ] Implement contradiction handling and supersession rather than silent overwrite.
- [ ] Implement forgetting/retention policy and explicit user-deletion hooks where applicable.
- [ ] Add memory precision evaluation set.
- [ ] Add false-recall/contamination tests.
- [ ] Add longitudinal recall benchmark across restart and time boundaries.
- [ ] Require Atlas responses to distinguish retrieved memory from current observation.
- [ ] Proof memory write/read/supersession/forgetting behavior.

## Sprint 06 — MCP Compatibility at CrownGrid Bounds
Canonical owner: CrownGrid/capability registry; no separate MCP control plane.

Microtasks:
- [ ] Inventory existing CrownGrid capability contract and executable registry.
- [ ] Map compatible capability discovery onto MCP 2026-07-28 concepts.
- [ ] Implement protocol adapter only at CrownGrid boundary.
- [ ] Preserve JANUS authorization for MCP-originated execution.
- [ ] Preserve Packet/Workforce routing for MCP-originated work.
- [ ] Preserve ProofGrid/THOTH receipt return.
- [ ] Support read-only resource/tool discovery.
- [ ] Support bounded tool invocation.
- [ ] Reject arbitrary shell/destructive bypass.
- [ ] Test schema compatibility, auth denial, capability allow, proof return, malformed request, provider timeout.
- [ ] Publish compatibility matrix and exact unsupported features.

## Sprint 07 — A2A External-Agent Handoff
Canonical owner: CrownGrid external-agent boundary + Workforce Spine.

Microtasks:
- [ ] Define external agent descriptor mapped to existing capability/provider registry.
- [ ] Implement bounded task handoff envelope using Packet OS semantics.
- [ ] Require JANUS authorization before external handoff.
- [ ] Scope credentials/identity per handoff.
- [ ] Require correlation/run IDs end-to-end.
- [ ] Require returned evidence before completion.
- [ ] Prevent external agent from becoming a replacement Workforce Spine.
- [ ] Implement timeout/cancel/retry semantics.
- [ ] Test happy path, denial, timeout, malformed result, missing proof, replay attempt.
- [ ] Persist handoff receipts through ProofGrid/THOTH.

## Sprint 08 — Sandboxed Computer / Code Action
Canonical owners: MetaForge + Workforce Spine + JANUS + existing EDEN bounded repo capabilities.

Microtasks:
- [ ] Reuse current bounded repository inspect/test/write/commit capabilities.
- [ ] Define computer/code task envelope and allowed presets.
- [ ] Deny arbitrary remote shell.
- [ ] Enforce allowlisted repository roots and protected paths.
- [ ] Enforce secret-file and size/count guards.
- [ ] Require pre-mutation snapshot/diff.
- [ ] Require test/build qualification before promotion.
- [ ] Require explicit commit path set.
- [ ] Never push/promote without policy authorization.
- [ ] Test safe edit, rejected traversal, rejected secret access, failed tests, rollback, successful qualified commit.

## Sprint 09 — Eval / Trace / Replay
Canonical owners: SECA/DevOS + ProofGrid + existing event/telemetry surfaces.

Microtasks:
- [ ] Normalize trace IDs around existing run/correlation IDs.
- [ ] Capture model route, tool plan, JANUS decision, worker execution, proof and THOTH return in one replayable trace envelope.
- [ ] Build deterministic replay for non-mutating evaluation.
- [ ] Add golden command-to-proof cases.
- [ ] Add denial cases.
- [ ] Add provider-failure cases.
- [ ] Add memory-recall cases.
- [ ] Add continuity/restart cases.
- [ ] Feed evaluation outcome into SECA/DevOS qualification.
- [ ] Emit ProofGrid eval receipt.
- [ ] Prevent replay from accidentally re-performing mutations.

## Sprint 10 — Install / Upgrade / Rollback / Recovery
Canonical owners: existing Atlas Mind installer/release surface + EDEN/GAIA deployment owners.

Microtasks:
- [ ] Keep current Windows RC lineage as installer owner.
- [ ] Prove clean Windows install from published release.
- [ ] Prove launch/auth/infer/continuity after install.
- [ ] Define in-place upgrade from previous qualified release.
- [ ] Preserve user config/memory references per policy.
- [ ] Define rollback to previous qualified package.
- [ ] Prove failed-upgrade recovery.
- [ ] Prove package integrity/digest verification.
- [ ] Prove local install path on canonical EDEN/Atlantis substrate.
- [ ] Prove cloud-only hosted-client path.
- [ ] Prove hybrid path and explicit offline/degraded behavior.

## Sprint 11 — Public / Work / Sovereign Modes
Canonical owner: Atlas Mind policy/session layer.

Microtasks:
- [ ] Define mode policy table without creating separate products.
- [ ] Public: public-safe providers/data/tool scope.
- [ ] Work: authenticated estate/project integrations under scoped authority.
- [ ] Sovereign: prefer owned/local infrastructure and private memory boundaries.
- [ ] Preserve same Atlas identity and conversation contract.
- [ ] Enforce data-classification routing before model/tool selection.
- [ ] Make active mode visible in UI and receipts.
- [ ] Test cross-mode denial and data leakage prevention.
- [ ] Test allowed provider/tool sets per mode.

## Sprint 12 — Stable Developer Contracts
Canonical owners: GA-NIF + CrownGrid + existing event/receipt contracts.

Microtasks:
- [ ] Freeze versioned status/models/capabilities/build-truth/infer contracts.
- [ ] Document capability discovery schemas.
- [ ] Document governed execution request/response schemas.
- [ ] Document event-stream envelope.
- [ ] Document ProofGrid/THOTH receipt references.
- [ ] Add contract tests for backwards compatibility.
- [ ] Add explicit version negotiation/deprecation rules.
- [ ] Expose SDK-shaped examples without introducing an independent runtime.
- [ ] Prove one external client can discover, invoke bounded capability, and receive receipts.

## Sprint 13 — Security Hardening
Canonical owners: JANUS + Medusa + existing auth/identity owners.

Microtasks:
- [ ] Inventory long-lived credentials and reduce to workload/ephemeral identity where supported.
- [ ] Enforce least-privilege provider permissions.
- [ ] Add prompt/tool-injection test corpus.
- [ ] Add tool-output injection containment.
- [ ] Add data-classification labels at ingress and memory write.
- [ ] Require audit replay for authorization decisions.
- [ ] Add policy regression suite.
- [ ] Verify high-risk/destructive/arbitrary-shell denial.
- [ ] Verify cross-user chat/memory isolation.
- [ ] Verify external-agent/MCP isolation.
- [ ] Verify secrets never enter ProofGrid/public logs.

## Sprint 14 — Product SLOs / Cost / Reliability
Canonical owners: existing telemetry + SECA/DevOS qualification.

Microtasks:
- [ ] Define TTFT SLO.
- [ ] Define end-to-end task latency SLO by task class.
- [ ] Define tool-success SLO.
- [ ] Define recovery-success SLO.
- [ ] Define provider/model cost-per-success metric.
- [ ] Define memory precision/recall metrics.
- [ ] Define ProofGrid completeness metric.
- [ ] Define continuity/restart success metric.
- [ ] Emit metrics from existing trace/run data.
- [ ] Add release gates for material SLO regression.
- [ ] Publish measured baseline; no invented targets reported as achieved.

## Sprint 15 — Five-Year Test Compression
Canonical owners: SECA/DevOS/ProofGrid + existing CI/runtime test owners.

Microtasks:
- [ ] Build deterministic scenario matrix across provider/model/substrate/mode combinations.
- [ ] Add fault injection at adapter boundaries, not production data corruption.
- [ ] Add provider outage simulation.
- [ ] Add latency/timeout simulation.
- [ ] Add worker-loss/restart simulation.
- [ ] Add malformed tool/result simulation.
- [ ] Add replay regression suite.
- [ ] Add upgrade compatibility matrix.
- [ ] Add long-horizon suspended/resumed task simulation.
- [ ] Add longitudinal memory benchmark.
- [ ] Add security regression corpus.
- [ ] Add voice interruption/degraded-mode cases.
- [ ] Require deterministic receipts for every scenario class.

## Sprint 16 — Final Convergence / Promotion
- [ ] Re-audit every frozen issue #7 outcome against current Build Truth.
- [ ] Classify every criterion PROVEN / IMPLEMENTED-UNPROVEN / BLOCKED / SUPERSEDED.
- [ ] Zero undocumented parallel Atlas Mind brains/runtimes/memory systems/installers.
- [ ] Archive/redirect superseded Atlas Mind surfaces only after unique asset salvage.
- [ ] Exact-head source/build/test qualification.
- [ ] Production deployment READY.
- [ ] Golden acceptance: install -> infer -> remember -> plan -> authorize -> execute -> verify -> receipt -> restart -> recover -> continue.
- [ ] Repeat Golden acceptance for cloud/local/hybrid with explicit degraded-state checks.
- [ ] Voice golden acceptance: wake/PTT -> infer -> governed tool -> receipt -> spoken grounded response -> barge-in -> continue.
- [ ] Security denial golden acceptance.
- [ ] Memory longitudinal acceptance.
- [ ] MCP compatibility acceptance.
- [ ] A2A handoff acceptance.
- [ ] SLO/eval matrix receipt.
- [ ] Update canonical Build Truth with all immutable evidence pointers.
- [ ] Close issue #7 only after all 16 outcome classes are proved.

## Current Truth

The campaign is **not COMPLETE**. Wave 00 product continuity remains the active release gate. The production harness source exists and has been repaired, but the current GitHub Actions provider is failing before runner allocation (`runner_id=0`, `steps=[]`), so no continuity PASS may be promoted from those runs.
