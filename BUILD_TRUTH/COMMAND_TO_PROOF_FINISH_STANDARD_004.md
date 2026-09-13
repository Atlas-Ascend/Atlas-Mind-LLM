# COMMAND-TO-PROOF FINISH STANDARD 004

Status: CANONICAL EXECUTION STANDARD
Effective: 2026-09-13
Scope: Ghost Atlas / EDEN convergence campaigns

## Purpose

Command-to-Proof now means **execute from the current observed state to the frozen Definition of Finished in one bounded campaign whenever the required authority and substrates are available**. It is not a planning synonym and it is not permission to move the acceptance boundary after execution starts.

## Non-negotiable law

1. **Freeze the Definition of Finished before execution.** Existing Build Truth and acceptance criteria are authoritative. Do not add new finish gates during the campaign unless a discovered defect proves an original gate cannot be honestly evaluated; such a defect is a repair task inside the same gate, not a new product goal.
2. **Enumerate the complete distance to finished.** Convert every remaining gate into ordered sprints, tasks, and microtasks. Include preflight, execution, failure handling, verification, promotion, post-promotion exercise, receipts, and cleanup/archive state.
3. **Reuse the canonical owner.** No parallel repo, runtime, auth system, model fabric, installer lineage, database, website, or proof system when an existing canonical owner can absorb the work.
4. **Instrument proof before claiming completion.** Every consequential action must have an observable expected result and a receipt target before it runs.
5. **Execute all machine-owned work in the current campaign.** Do not return a blocker inventory for work the connected tools/CI/runtime can perform.
6. **Human-only boundaries must be minimized, exact, and non-blocking to unrelated work.** Never request credentials or secrets in chat. If a human step is truly unavoidable, reduce it to the smallest action and continue every other executable task.
7. **Fail closed.** Missing auth, persistence, runtime, proof, memory, or deployment evidence is FAIL/UNPROVEN, never inferred PASS.
8. **Single-lineage acceptance.** When the Definition of Finished requires continuity, the same identity/work item/correlation lineage must cross the entire required path. Unrelated receipts cannot be combined to simulate continuity.
9. **Exact-head qualification.** CI proof belongs to the exact commit that produced it. Promotion requires that exact candidate head to pass its gates.
10. **Post-promotion production exercise.** A merge/deploy is not completion. Re-run the acceptance probe against the promoted production state and record the production revision/deployment.
11. **Build Truth must match observed reality.** BUILT != TESTED != RUNNING != CONNECTED != EXECUTING != RECEIPTED != VERIFIED != PROVEN != PROMOTED.
12. **Close only the frozen acceptance contract.** A campaign issue is closed only when every original acceptance criterion is proven or explicitly superseded by the Architect. No silent goalpost movement.

## Required campaign structure

Every Command-to-Proof finish campaign SHALL contain:

- Frozen Definition of Finished
- Current proven baseline
- Delta-to-finished matrix
- Ordered sprints
- Every task and microtask
- Owner/canonical surface for each task
- Expected evidence for each microtask
- Fail-closed conditions
- Candidate qualification gate
- Promotion gate
- Production re-exercise gate
- Final receipt
- Explicit remaining boundary, if any

## Definition of COMPLETE

A campaign may report `COMPLETE` only when:

- every frozen acceptance criterion is checked against evidence;
- all required tests pass on the exact promoted source state;
- required runtime/deployment state is observed live;
- persistence/continuity requirements survive the required restart/re-auth boundary;
- verification/proof receipts are attached;
- Build Truth is updated to the final observed state;
- the campaign tracker is closed `completed`.

Anything less is `PARTIALLY PROVEN`, `FAILED`, or `BLOCKED_BY_NONDELEGABLE_BOUNDARY` with the exact missing gate named.
