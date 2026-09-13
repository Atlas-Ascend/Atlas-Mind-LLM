# ATLAS-MIND-W00-FINISH-CAMPAIGN-004

Status: ACTIVE
Date: 2026-09-13
Parent acceptance issue: `Atlas-Ascend/Atlas-Mind-LLM#9`
Execution standard: `BUILD_TRUTH/COMMAND_TO_PROOF_FINISH_STANDARD_004.md`

## Frozen Definition of Finished

Wave 00 closes only when the existing acceptance contract is proven. No new finish gates are authorized.

Frozen gates:

1. production model route returns genuine model-generated text;
2. model itself selects/calls the existing governed objective tool;
3. Vercel workload identity -> GA-NIF -> JANUS -> Workforce -> ProofGrid -> THOTH -> grounded synthesis completes on one correlated lineage;
4. existing installer is repaired and reaches production READY;
5. clean-machine install -> launch -> infer -> remember -> governed execute -> receipt -> restart -> recall -> continue passes;
6. failure behavior is explicit when provider, runtime, memory, or proof path is unavailable;
7. ProofGrid/SECA/DevOS receipts are attached before closure.

## Proven baseline before this campaign

Already proven and must not be carried as false backlog:

- genuine production model inference;
- model-selected `executeAtlasObjective`;
- Vercel OIDC -> GA-NIF -> JANUS -> governed capability execution -> ProofGrid -> THOTH -> grounded second-pass synthesis;
- repaired Windows hosted-client package `3.0.0-wave00-rc1`;
- clean Windows package/LKG/rollback qualification;
- exact-main package qualification;
- public distribution from `atlasmind.global/releases`;
- live GA-NIF status after release publication.

The only unresolved end-to-end acceptance gate is one continuous persistent regular-user lineage crossing authentication, durable conversation state, governed execution/proof/memory, full browser-process restart, re-authentication, recall, and continuation. Failure-mode and final receipt closure are evaluated as part of that same production harness.

---

# Sprint 00 — Freeze and instrument the closure contract

Owner: `Atlas-Mind-LLM#9` + this Build Truth file.

- [x] 00.01 Read the current Wave 00 acceptance criteria verbatim.
- [x] 00.02 Preserve all seven original acceptance criteria.
- [x] 00.03 Mark already-proven gates as baseline rather than rerunning them blindly.
- [x] 00.04 Define the remaining gate as a single continuous identity/chat lineage.
- [x] 00.05 Prohibit combining unrelated receipts to fake continuity.
- [x] 00.06 Prohibit guest-only continuity from substituting for regular-user persistence.
- [x] 00.07 Prohibit auth weakening, test backdoors, embedded credentials, or alternate persistence systems.
- [x] 00.08 Choose the existing `nextjs-ai-chatbot` Playwright test stack as the proof harness owner.
- [x] 00.09 Choose production `https://atlasmind.global` as the runtime target.
- [x] 00.10 Define evidence artifact fields before execution.

Evidence required: canonical campaign file + canonical Command-to-Proof standard.

# Sprint 01 — Production persistence/auth preflight

Owner: existing `nextjs-ai-chatbot` Auth.js + Drizzle/Postgres + chat APIs.

- [x] 01.01 Confirm regular users authenticate through existing Credentials provider.
- [x] 01.02 Confirm registration uses existing `createUser` path.
- [x] 01.03 Confirm login resolves the same user by email/password.
- [x] 01.04 Confirm regular-user JWT/session carries stable `user.id` and `type=regular`.
- [x] 01.05 Confirm chat creation persists `chat.userId = session.user.id`.
- [x] 01.06 Confirm user messages persist before model execution.
- [x] 01.07 Confirm assistant/tool messages persist after generation.
- [x] 01.08 Confirm chat reload reads saved chat and messages from the database.
- [x] 01.09 Confirm governed execution remains model-visible through `executeAtlasObjective`.
- [x] 01.10 Confirm governed tool output contains run/correlation/capability/proof/memory fields.
- [x] 01.11 Confirm Playwright is already a dev dependency and existing auth/chat page objects provide stable selectors.
- [x] 01.12 Confirm the test can run against production without creating a second application runtime.

Fail closed if regular registration/login or persistent chat storage is unavailable.

# Sprint 02 — Build the one-shot production continuity harness

Owner: existing `nextjs-ai-chatbot/tests` and GitHub Actions.

- [ ] 02.01 Create a dedicated production Playwright config with `baseURL=https://atlasmind.global` and no local web server.
- [ ] 02.02 Force serial execution/workers=1 for one correlated lineage.
- [ ] 02.03 Retain trace/screenshot evidence on failure.
- [ ] 02.04 Create a Wave 00 production test file inside existing `tests/e2e`.
- [ ] 02.05 Generate a unique synthetic regular-user email for the run.
- [ ] 02.06 Generate a strong random password in memory only.
- [ ] 02.07 Never print or upload the password.
- [ ] 02.08 Generate a unique continuity marker.
- [ ] 02.09 Launch browser process A.
- [ ] 02.10 Register through the real `/register` UI.
- [ ] 02.11 Require `Account created successfully!`.
- [ ] 02.12 Require redirect into authenticated chat.
- [ ] 02.13 Verify the user menu identifies the synthetic regular user rather than Guest.
- [ ] 02.14 Select the existing `chat-model-reasoning` model.
- [ ] 02.15 Construct the first acceptance prompt around the unique marker.
- [ ] 02.16 Require the model to use existing `executeAtlasObjective`, not merely describe execution.
- [ ] 02.17 Request exactly two safe bounded steps: THOTH remember marker + runtime SHA-256 of marker.
- [ ] 02.18 Capture the `/api/chat` production response.
- [ ] 02.19 Require HTTP success.
- [ ] 02.20 Require stream evidence that `executeAtlasObjective` was selected.
- [ ] 02.21 Require `COMPLETE_WITH_PROOF`.
- [ ] 02.22 Require verified step evidence and proof count > 0.
- [ ] 02.23 Require `thoth.remember` capability evidence.
- [ ] 02.24 Require `runtime.sha256` capability evidence.
- [ ] 02.25 Require non-null returned memory state.
- [ ] 02.26 Require final assistant text to contain the continuity marker.
- [ ] 02.27 Capture the canonical `/chat/<uuid>` URL.
- [ ] 02.28 Require the persisted user message DOM to contain the marker.
- [ ] 02.29 Save pre-restart screenshot.
- [ ] 02.30 Record all non-secret step evidence into the proof JSON.

# Sprint 03 — Full browser-process restart + re-authenticated recall

Owner: same Playwright test and same synthetic regular user/chat lineage.

- [ ] 03.01 Close browser process A completely.
- [ ] 03.02 Record process-A-closed in proof state.
- [ ] 03.03 Launch a fresh browser process B with no copied storage state.
- [ ] 03.04 Navigate to `/login`.
- [ ] 03.05 Sign in through the real credentials UI using the same synthetic account.
- [ ] 03.06 Require successful redirect to authenticated Atlas.
- [ ] 03.07 Require the same regular-user email in the authenticated UI.
- [ ] 03.08 Navigate directly to the saved `/chat/<uuid>` URL.
- [ ] 03.09 Require HTTP/page success.
- [ ] 03.10 Require the original marker-bearing user message to exist before any new prompt.
- [ ] 03.11 Require the original assistant/tool response to exist after reload.
- [ ] 03.12 Send a second prompt that asks Atlas to continue from prior context without another external action.
- [ ] 03.13 Capture the second `/api/chat` response.
- [ ] 03.14 Require HTTP success.
- [ ] 03.15 Require the second assistant response to reproduce the exact marker.
- [ ] 03.16 Require the second assistant response to emit `CONTINUITY_RECALL=PASS` only from visible persisted context.
- [ ] 03.17 Require the second turn to append to the same chat URL/id.
- [ ] 03.18 Save post-restart screenshot.
- [ ] 03.19 Record restart/re-auth/recall evidence in the proof JSON.
- [ ] 03.20 Close browser process B.

# Sprint 04 — Failure behavior and fail-closed assertions

Owner: same production harness.

- [ ] 04.01 Registration failure => test FAIL, no synthetic PASS.
- [ ] 04.02 Login failure after restart => test FAIL.
- [ ] 04.03 Wrong/guest identity after re-auth => test FAIL.
- [ ] 04.04 Chat POST non-2xx => test FAIL.
- [ ] 04.05 Missing model-selected governed tool => test FAIL.
- [ ] 04.06 Missing `COMPLETE_WITH_PROOF` => test FAIL.
- [ ] 04.07 Any required governed step with `verified=false` => test FAIL.
- [ ] 04.08 Proof count <= 0 => test FAIL.
- [ ] 04.09 Missing THOTH memory state => test FAIL.
- [ ] 04.10 Missing `thoth.remember` capability => test FAIL.
- [ ] 04.11 Missing `runtime.sha256` capability => test FAIL.
- [ ] 04.12 Missing chat after restart => test FAIL.
- [ ] 04.13 Marker absent after restart => test FAIL.
- [ ] 04.14 Recall prompt cannot reproduce marker => test FAIL.
- [ ] 04.15 Test timeout => FAIL with trace/screenshot.
- [ ] 04.16 No failure is converted into a degraded PASS.

# Sprint 05 — CI execution and proof pack

Owner: existing GitHub Actions in `nextjs-ai-chatbot`.

- [ ] 05.01 Add one bounded workflow for the Wave 00 production continuity test.
- [ ] 05.02 Trigger it automatically from the convergence branch.
- [ ] 05.03 Checkout exact head.
- [ ] 05.04 Install existing pnpm dependencies from lockfile.
- [ ] 05.05 Install Chromium for existing Playwright version.
- [ ] 05.06 Run only the Wave 00 production continuity test.
- [ ] 05.07 Upload proof JSON.
- [ ] 05.08 Upload pre/post restart screenshots.
- [ ] 05.09 Upload Playwright report/trace on failure.
- [ ] 05.10 Capture workflow run id, job id, exact commit SHA and artifact id.
- [ ] 05.11 Do not merge if the candidate run fails.

# Sprint 06 — Candidate review and exact-head promotion

Owner: `nextjs-ai-chatbot` existing main branch/Vercel integration.

- [ ] 06.01 Open one convergence PR containing only the production continuity harness/config/workflow and campaign receipt glue.
- [ ] 06.02 Inspect changed files and diff.
- [ ] 06.03 Confirm no auth implementation changes.
- [ ] 06.04 Confirm no database schema changes.
- [ ] 06.05 Confirm no model/runtime/JANUS changes.
- [ ] 06.06 Confirm no embedded credentials/secrets.
- [ ] 06.07 Confirm candidate workflow PASS belongs to exact PR head.
- [ ] 06.08 Merge only that proven head.
- [ ] 06.09 Record merge SHA.
- [ ] 06.10 Wait for exact merge production deployment READY.
- [ ] 06.11 Confirm `atlasmind.global` aliases to the merge deployment.
- [ ] 06.12 Re-probe GA-NIF after deployment.
- [ ] 06.13 Re-run the continuity workflow against production from canonical main if workflow policy permits; otherwise run the same exact test as a merge-triggered job.
- [ ] 06.14 Require the main/production re-run to PASS before closure.

# Sprint 07 — Final receipt and Wave 00 closure

Owner: `Atlas-Mind-LLM` Build Truth + issue #9.

- [ ] 07.01 Record synthetic account identifier (email only; never password).
- [ ] 07.02 Record continuity marker.
- [ ] 07.03 Record persistent chat id/URL.
- [ ] 07.04 Record first model response evidence.
- [ ] 07.05 Record governed execution parent correlation id.
- [ ] 07.06 Record per-step run ids/correlation ids.
- [ ] 07.07 Record selected capabilities.
- [ ] 07.08 Record ProofGrid proof identifiers/counts.
- [ ] 07.09 Record THOTH memory state/identifier returned by the governed runtime.
- [ ] 07.10 Record browser-process-A close and process-B launch.
- [ ] 07.11 Record re-authenticated same-user confirmation.
- [ ] 07.12 Record post-restart persisted marker visibility.
- [ ] 07.13 Record recall/continue assistant result.
- [ ] 07.14 Record candidate workflow run/job/artifact/SHA.
- [ ] 07.15 Record merge SHA and production deployment id.
- [ ] 07.16 Record main/production continuity re-run receipt.
- [ ] 07.17 Reconcile all seven frozen acceptance criteria against evidence.
- [ ] 07.18 Update `ATLAS_MIND_INSTALLER_CONVERGENCE_003.md` with final lifecycle proof.
- [ ] 07.19 Update issue #9 body checkboxes to the observed final truth.
- [ ] 07.20 Close issue #9 `completed` only if all seven frozen gates are PASS.
- [ ] 07.21 If any gate fails, leave #9 open and attach the exact failing microtask + evidence. Do not add a new finish requirement.

## Completion state

`COMPLETE` requires Sprint 00-07 and all seven frozen acceptance gates to be proven. The campaign does not authorize Wave 01 or any capability expansion; completion only closes Wave 00 release truth.
