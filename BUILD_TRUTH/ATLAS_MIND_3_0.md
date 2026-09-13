# ATLAS MIND 3.0 — FIVE-YEAR CAPABILITY COMPRESSION

Status: PROPOSED BUILD TRUTH / CONVERGENCE BRANCH
Campaign: ATLAS-MIND-3.0
Umbrella issue: #7
Date: 2026-09-13

## 0. Executive definition

Atlas Mind 3.0 is not a replacement system. It is the next product version of the existing canonical Atlas Mind organism.

The purpose of 3.0 is to compress the kinds of improvements that would normally emerge over roughly five years of production use, testing, failure analysis, model churn, security hardening, memory tuning, multimodal expansion, developer feedback, installer maturation, and operator experience into one convergence program.

No new estate organ is authorized by this document.

Canonical ownership remains:

- Atlas Mind: stable intelligence identity and primary conversational/product surface.
- GA-NIF: model and inference fabric ingress.
- JANUS/ODIN: authority and executive policy.
- CrownGrid: capability and external interoperability routing.
- Packet OS: inspectable atomic work representation.
- Workforce Spine: durable work state, assignment, and lifecycle.
- THOTH: memory, provenance, world state, and recall.
- MetaForge: software/artifact build execution.
- SECA/DevOS: evaluation, qualification, engineering and release truth.
- Medusa: security policy and public/private boundary.
- ProofGrid: evidence, receipts, and promotion truth.
- EDEN/HYPERNET: sovereign/local embodiment and transport.

New market technologies and protocols may be absorbed only as adapters, contracts, test methods, or implementation upgrades inside those owners.

## 1. Current 3.0 starting baseline

The current product already has a real public Atlas Mind surface, GA-NIF, a governed execution path, JANUS authorization, Workforce execution, ProofGrid receipt generation, THOTH persistence, and cloud provider bindings.

The 3.0 program starts by closing current release truth, not by skipping it:

1. prove real production model-generated inference;
2. prove a model-native tool call through the complete governed execution path;
3. repair and promote the existing installer surface;
4. prove clean-machine install, restart, persistence, recovery, and continued operation.

No 3.0 feature may be used to conceal an unresolved 1.0 proof gap.

## 2. Product invariant

Atlas Mind has one identity across substrates.

The same Atlas Mind may run in three product policies:

### PUBLIC

Hosted interaction with strict isolation from the private Ghost Atlas Estate. Public users receive bounded Atlas capabilities with no estate enumeration or private authority.

### WORK

Authenticated team/workspace operation with shared projects, delegated capabilities, evidence, workflow state, and governed organizational memory.

### SOVEREIGN

Local or hybrid operation where private data, local model execution, local memory, and owned infrastructure remain canonical while cloud providers are optional accelerators.

These are not three products or three codebases. They are policy/substrate profiles over one Atlas Mind identity.

## 3. Atlas Mind 3.0 capability envelope

### 3.1 Adaptive model fabric

GA-NIF becomes a policy-driven model fabric rather than a single configured-model pipe.

Required behavior:

- model/provider discovery from live adapters;
- routing by quality, latency, availability, cost, modality, context requirement, tool reliability, privacy class, and execution risk;
- explicit model capability metadata rather than name-based assumptions;
- per-task reasoning budget and escalation policy;
- cheap-model-first routing only when task policy permits;
- frontier escalation for high-complexity/high-consequence work;
- provider failover with deterministic policy boundaries;
- shadow evaluation of candidate models without silently changing production authority;
- canary promotion before a model becomes default;
- rollback to the last proven model route;
- no model is considered healthy because it appears in a catalog;
- no model is considered production-proven until generated output is observed;
- no model is considered execution-proven until it successfully participates in governed command-to-proof.

A routing decision must be inspectable and receiptable.

Minimum routing receipt:

- task_class
- selected_model
- provider
- selection_policy_version
- candidate_set
- policy scores
- fallback chain
- latency
- token/input/output accounting when available
- estimated/actual cost when available
- failure class
- final completion class

### 3.2 Long-horizon agentic reasoning

Atlas Mind 3.0 must support work that survives beyond a single request/response cycle without granting unbounded autonomy.

Required behavior:

- bounded multi-step planning;
- explicit plan state rather than hidden conversational intention;
- checkpoints between consequential steps;
- suspend/resume;
- retry with idempotency keys;
- compensating actions for reversible mutations;
- deadlines/timeouts;
- dependency-aware work graphs;
- model handoff without losing packet lineage;
- human approval gates when policy requires;
- automatic continuation only inside pre-authorized bounds;
- resumability after process restart;
- deterministic terminal states: COMPLETE, DENIED, FAILED, DEGRADED, CANCELED, WAITING_FOR_AUTHORITY;
- proof for every mutation-bearing step.

Packet OS remains the work substrate; Workforce Spine remains the durable task bloodstream. A durable-agent framework may implement these semantics, but it must not replace those owners.

### 3.3 Tool and capability intelligence

Atlas Mind must understand capabilities as governed contracts, not as arbitrary function names.

Every executable capability must expose or derive:

- capability_id
- provider
- description
- input/output schema
- risk class
- required authority
- data classes touched
- mutation class
- runtime location
- estimated duration/cost when known
- idempotency characteristics
- cancellation semantics
- proof obligations
- current availability
- current qualification state

Atlas may reason about tools, but JANUS remains authoritative for execution permission.

Tool selection quality becomes an evaluated product metric.

### 3.4 THOTH memory 3.0 behavior

THOTH remains the memory owner. Atlas Mind 3.0 adds a disciplined memory contract over it.

Memory classes:

- working context: short-lived task state;
- episodic: what happened, when, under which run/correlation IDs;
- semantic: stable facts and learned domain knowledge;
- procedural: proven ways of doing recurring work;
- preference: user/workspace choices with provenance and scope;
- world state: current known state of projects, systems, deployments, files, and commitments;
- negative memory: known failures, rejected approaches, revoked routes, unsafe or stale patterns;
- proof-linked memory: claims directly anchored to ProofGrid evidence.

Every durable memory record should support:

- source/provenance
- observed_at
- created_at
- confidence
- scope
- privacy/data class
- freshness/TTL or review policy
- contradiction links
- supporting proof IDs where applicable
- retrieval count/last use
- supersession state

Memory operations required:

- capture;
- retrieval;
- consolidation;
- deduplication;
- contradiction detection;
- supersession;
- retention/expiry;
- user-authorized correction;
- source deletion propagation where required;
- memory export/import;
- offline reconciliation between local and cloud memory.

Memory quality must be measured using precision, recall, staleness, contradiction, source coverage, and task benefit. Large memory volume is not a success metric.

### 3.5 Context engineering

Atlas Mind 3.0 must stop treating context as “put more text in the prompt.”

Context assembly becomes a governed stage with:

- task intent;
- relevant conversation state;
- active project/world state;
- retrieved THOTH memories;
- current capability registry;
- policy and authority constraints;
- user/workspace preferences;
- source-backed evidence;
- model-specific context budget;
- explicit omission/truncation strategy;
- sensitive-data filtering;
- freshness preference for dynamic state.

The context builder must be traceable so poor outputs can be attributed to missing/incorrect context rather than vaguely blamed on the model.

### 3.6 Multimodal Atlas

Atlas Mind identity extends across text, voice, audio, image, camera/screen, documents, and video where the active processor supports them.

The key invariant is one conversation/task lineage across modalities.

Requirements:

- text streaming;
- image/file understanding;
- document ingestion with source lineage;
- audio transcription;
- speech generation;
- realtime voice sessions;
- barge-in/interruption;
- turn detection;
- voice-to-tool handoff;
- tool result spoken summarization;
- screen/camera context with explicit user consent;
- multimodal evidence attached to the same run/correlation IDs;
- modality-specific privacy and retention policy;
- graceful downgrade when a model lacks a modality.

Voice is not a separate assistant. It is Atlas Mind with a different I/O surface.

### 3.7 Continuous voice / ambient interaction

Atlas Mind 3.0 should be able to serve the interaction role previously targeted by the Alexa-like surface while preserving stronger governance.

Required product behaviors:

- wake/activation policy controlled by device profile;
- push-to-talk and continuous-session modes;
- fast interruption;
- visible/listenable confirmation before high-risk actions;
- session-level context without treating overheard audio as durable memory by default;
- local-first wake detection where available;
- local redaction/classification before cloud routing in sovereign mode where feasible;
- handoff from voice to visual proof cards for complex actions;
- continuation from phone to browser/desktop without losing run lineage.

### 3.8 External interoperability

CrownGrid is the canonical boundary for interoperability.

#### MCP compatibility

Support the 2026-07-28 MCP direction as an adapter contract where useful:

- stateless request/response core;
- authorization hardened for OAuth/OIDC deployments;
- task/long-running work compatibility;
- application/UI resources where appropriate;
- cacheable capability/resource lists;
- explicit extensions rather than private protocol forks;
- protocol/version negotiation;
- fail-closed behavior on unsupported extensions.

MCP does not replace CrownGrid or Packet OS. It is an external capability/data protocol mapped into them.

#### A2A compatibility

External agent-to-agent collaboration may be supported at CrownGrid through an A2A-compatible adapter.

Rules:

- external agents never become implicit estate authorities;
- task handoff enters Packet OS/Workforce Spine;
- identity/authentication is explicit;
- capabilities are advertised without leaking private estate topology;
- inbound work is policy-checked by JANUS;
- outbound delegation carries least-privilege context;
- proof/evidence from an external agent is treated as evidence, not automatically as verified truth;
- all accepted results re-enter SECA/DevOS + ProofGrid qualification.

A2A does not replace internal Workforce agent coordination.

### 3.9 Computer/code work

Atlas Mind 3.0 can operate software environments through existing MetaForge/Workforce authority.

Required behavior:

- sandboxed code execution;
- bounded filesystem access;
- controlled network access;
- artifact creation;
- test execution;
- browser/computer interaction where supported;
- screenshots/logs/diffs as evidence;
- secret isolation;
- ephemeral credentials;
- explicit mutation scopes;
- no arbitrary shell as a default capability;
- artifact promotion only after SECA/DevOS qualification.

The model proposes. JANUS authorizes. MetaForge/Workforce executes. ProofGrid receipts.

### 3.10 Evaluation and replay

SECA/DevOS owns product evaluation; ProofGrid owns receipts.

Atlas Mind 3.0 adds continuous eval coverage for:

- answer correctness;
- groundedness/source quality;
- refusal/authority correctness;
- tool-selection accuracy;
- tool-argument validity;
- task completion;
- memory retrieval quality;
- memory write quality;
- context assembly quality;
- multi-step recovery;
- hallucinated execution claims;
- prompt/tool injection resistance;
- provider/model regressions;
- latency;
- cost;
- user-visible failure clarity;
- restart/resume correctness.

Every important production trace should be replayable against candidate model/router/prompt/policy versions without mutating production state.

Promotion uses eval deltas, not vibes.

### 3.11 Observability

Atlas Mind must make its reasoning/execution system inspectable without exposing private hidden reasoning text.

Trace model:

- request_id
- conversation_id
- task_id
- packet_id
- run_id
- correlation_id
- model_call_id
- tool_call_id
- authorization_decision_id
- worker_id
- proof_id
- memory_id
- deployment/revision IDs

Observable spans should include:

- context assembly;
- model route selection;
- model latency/usage;
- tool planning;
- JANUS authorization;
- queue wait;
- execution;
- verification;
- proof sealing;
- THOTH commit;
- final synthesis.

Atlas 3.0 should be debuggable from a single correlation ID.

### 3.12 Security and trust hardening

Medusa + JANUS + SECA/DevOS remain the security/trust authorities.

3.0 security requirements:

- least privilege everywhere;
- short-lived/ephemeral provider credentials where supported;
- workload identity/OIDC preferred over standing secrets;
- secrets never placed in model context unless explicitly required and scoped;
- prompt injection treated as untrusted input, not merely a text classification problem;
- tool outputs may contain hostile instructions and must remain data unless policy explicitly elevates them;
- data classification before external model/provider routing;
- per-capability authority checks;
- explicit high-risk mutation confirmation policy;
- signed/hashed proof artifacts where applicable;
- tamper-evident lineage;
- replayable authorization decisions;
- provider egress allowlists for sovereign modes;
- dependency/SBOM and supply-chain checks for installable artifacts;
- red-team suites for memory poisoning, tool injection, confused-deputy attacks, privilege escalation, stale-state actions, forged receipts, and cross-tenant leakage.

### 3.13 Developer platform

Atlas Mind 3.0 should expose stable contracts so the product can be extended without coupling clients to internal implementation details.

Public/stable contract families:

- conversation/inference;
- model/capability discovery;
- task/run submission;
- task/run status;
- event streaming;
- approval/authority requests;
- proof retrieval;
- memory retrieval/write under policy;
- file/artifact attachment;
- health/status/build truth;
- integration metadata.

Requirements:

- versioned schemas;
- idempotency keys;
- pagination where needed;
- deterministic error classes;
- correlation IDs on every response;
- OpenAPI/JSON schema where appropriate;
- SDK generation only from canonical contracts;
- backward-compatibility tests;
- deprecation windows;
- capability discovery rather than hard-coded client assumptions.

### 3.14 Installation and update system

Use and repair the existing Atlas installer/distribution surfaces.

3.0 install modes:

- hosted/web;
- local;
- hybrid.

The installer must own environment discovery, not architecture.

Installer requirements:

- prerequisite detection;
- compatible processor discovery;
- secure secret/bootstrap flow;
- local storage initialization;
- policy profile selection;
- optional cloud binding;
- first-run health test;
- inference test;
- memory test;
- capability test;
- proof test;
- signed version manifest;
- upgrade with migration dry-run;
- rollback to last known-good version;
- backup/export before destructive migration;
- uninstall that preserves or explicitly offers export of user-owned data;
- clean-machine automated acceptance test.

No release is INSTALLABLE until a fresh machine has completed install -> launch -> infer -> remember -> execute -> receipt -> restart -> resume.

### 3.15 Sovereign local/cloud/hybrid behavior

Atlas Mind 3.0 must not equate “cloud down” with “mind down.”

Sovereign mode rules:

- local processor may be canonical for private/offline tasks;
- cloud processors are policy-routed accelerators;
- local THOTH/Proof store remains usable offline;
- outbound synchronization is explicit and data-class aware;
- conflicts reconcile through deterministic world-state rules;
- loss of cloud provider causes DEGRADED_LOCAL rather than false COMPLETE where local execution can continue;
- loss of local EDEN may route approved work to cloud when policy permits;
- model identity is not Atlas identity;
- provider replacement must not erase conversation/task/memory lineage.

### 3.16 User experience maturity

Atlas Mind 3.0 should feel like one operating environment, not a pile of admin screens.

Core UX states:

- Ask/Think;
- Work/Execute;
- Observe;
- Approve;
- Proof;
- Memory;
- Projects/World State;
- Models/Capabilities;
- Settings/Policy.

Every action should make the system state legible:

- what Atlas understood;
- what it plans to do;
- which capabilities it intends to use;
- what requires approval;
- what is currently running;
- what failed and why;
- what proof exists;
- what Atlas remembered;
- what the next action is.

Avoid fake “agent is thinking” theater. Surface real state transitions.

## 4. Five-year test compression program

The goal is not to claim five years of experience. The goal is to deliberately simulate the categories of evidence normally accumulated across five years.

### 4.1 Model/provider matrix

Test supported task classes across candidate model/provider routes:

- simple conversation;
- structured extraction;
- planning;
- tool selection;
- tool argument generation;
- coding;
- research synthesis;
- long-context retrieval;
- multimodal interpretation;
- voice interaction;
- high-latency/retry behavior.

Use representative/pairwise matrices rather than an unbounded Cartesian product.

### 4.2 Longitudinal memory simulation

Replay synthetic timelines representing:

- one session;
- one day;
- one week;
- one month;
- one year equivalent history;
- multi-year equivalent history.

Evaluate:

- recall precision;
- relevant omission;
- stale memory rate;
- contradiction handling;
- supersession correctness;
- preference drift;
- privacy boundary correctness;
- memory size/latency growth;
- source deletion propagation.

### 4.3 Fault injection

Inject failures in:

- model timeout;
- provider 429;
- provider 5xx;
- malformed tool call;
- tool timeout;
- JANUS unavailable;
- Workforce queue unavailable;
- THOTH unavailable;
- ProofGrid unavailable;
- Neon unavailable;
- Vercel/Render restart;
- local EDEN disconnect;
- network partition;
- stale capability registry;
- partial response;
- duplicate event delivery;
- out-of-order event delivery.

Acceptance depends on correct degraded behavior, not merely eventual success.

### 4.4 Chaos and recovery

Continuously prove:

- restart safety;
- idempotency;
- queue recovery;
- duplicate suppression;
- no false completion after partial execution;
- rollback correctness;
- replay correctness;
- proof/memory consistency after recovery.

### 4.5 Security regression

Maintain attack suites for:

- direct prompt injection;
- indirect prompt injection in web/file/tool output;
- malicious MCP/A2A peer;
- memory poisoning;
- tool schema spoofing;
- forged evidence;
- cross-user/cross-workspace data leakage;
- secret exfiltration attempts;
- authorization bypass;
- high-risk tool escalation;
- stale authority replay;
- dependency compromise scenarios.

### 4.6 Upgrade compatibility

Every release candidate must prove migration from the previous supported version and rollback to the previous known-good version.

Test:

- schema migration;
- memory compatibility;
- proof compatibility;
- task resume compatibility;
- API contract compatibility;
- installer upgrade;
- downgrade/rollback;
- local/cloud profile preservation.

## 5. 3.0 target SLOs and quality gates

These are targets, not current claims.

### Reliability

- 100% of governed mutation-bearing execution paths produce a terminal receipt or explicit failure receipt.
- 0 accepted silent-success states when proof is required.
- >= 99% bounded-tool completion on the stable regression suite after transient retries are exhausted/exercised according to policy.
- restart/resume must preserve task lineage in 100% of qualified recovery tests.

### Model routing

- >= 99% route-policy conformance on deterministic routing tests.
- provider failover may not weaken privacy/authority policy.
- default-model promotion requires statistically meaningful non-regression on the canonical eval set.

### Memory

- >= 0.90 precision on canonical relevant-memory retrieval benchmarks.
- stale/superseded memory must not outrank a newer proven record when both are available.
- source/provenance coverage for durable operational claims: 100%.

### Proof

- governed executions requiring proof: 100% proof linkage.
- proof references must resolve to the same run/correlation lineage.

### UX/performance

- warm conversational TTFT target: <= 2s p95 where provider/model class makes this achievable;
- command acceptance should visibly acknowledge state before long execution begins;
- progress must derive from real events, not simulated percentages.

### Security

- zero known critical authorization bypasses at release;
- zero known cross-tenant/cross-workspace leakage at release;
- high-risk mutation requires the configured authority policy with no model-only bypass.

## 6. Release gates

Atlas Mind 3.0 cannot be declared complete until all gates below have durable evidence.

### GATE A — REAL INFERENCE

A supported production route returns genuine model-generated content.

### GATE B — MODEL-NATIVE COMMAND

The model selects and calls a governed capability and the result returns through JANUS -> Workforce -> ProofGrid -> THOTH -> grounded Atlas synthesis.

### GATE C — DURABLE TASK

A multi-step task survives suspension/restart and resumes without duplicate mutation or lineage loss.

### GATE D — MEMORY

Atlas stores, retrieves, supersedes, and cites durable memory correctly across restart.

### GATE E — MULTIMODAL

At least text + voice + file/image flows share one conversation/task lineage and preserve policy boundaries.

### GATE F — INTEROPERABILITY

At least one qualified MCP external capability and one qualified external-agent handoff traverse CrownGrid without bypassing JANUS/ProofGrid.

### GATE G — SANDBOXED BUILD

Atlas delegates a bounded build task through MetaForge/Workforce, runs tests, captures evidence, and promotes only after SECA/DevOS qualification.

### GATE H — FAILURE/RECOVERY

Injected provider/runtime/memory/proof failures produce correct terminal/degraded states and recovery behavior.

### GATE I — INSTALL

Fresh-machine installation passes first-run diagnostics and active inference.

### GATE J — HYBRID

A task can run local-first, cloud-assisted, and recover from loss of either substrate without confusing Atlas identity with provider identity.

### GATE K — SECURITY

Security regression suite passes the current Medusa/JANUS release threshold.

### GATE L — CLEAN RESTART

Install -> infer -> remember -> plan -> authorize -> execute -> verify -> receipt -> restart -> recall -> continue completes with one traceable lineage.

## 7. Ordered convergence waves

No parallel architecture program is authorized. Implement as ordered patches to existing owners.

### Wave 00 — close current truth

- real inference
- model-native command
- installer repair
- clean-machine v1 proof

### Wave 01 — unified trace contract

- normalize IDs/events/spans across Atlas, GA-NIF, JANUS, Workforce, ProofGrid, THOTH
- single-correlation debugging

### Wave 02 — model router maturity

- policy scoring
- failover
- canary/shadow routes
- eval-driven promotion/rollback

### Wave 03 — durable execution

- suspend/resume/retry/idempotency
- checkpoints and approvals
- task recovery

### Wave 04 — THOTH memory quality

- memory classes
- provenance/freshness/supersession
- consolidation and contradiction handling
- longitudinal evals

### Wave 05 — multimodal + voice

- realtime voice
- image/file/audio
- cross-device continuity
- policy-aware modality routing

### Wave 06 — protocol compatibility

- MCP adapter modernization
- A2A external-agent adapter
- CrownGrid policy mapping

### Wave 07 — sandbox/computer work

- controlled code/computer execution
- MetaForge/Workforce route
- evidence capture

### Wave 08 — eval/replay platformization

- regression corpus
- production trace replay
- model/prompt/router/policy comparisons
- release thresholds

### Wave 09 — security hardening

- injection suites
- ephemeral identity
- data classification
- supply chain
- cross-tenant tests

### Wave 10 — installer/update/rollback

- local/cloud/hybrid profiles
- signed manifests
- upgrade/rollback
- clean-machine automation

### Wave 11 — developer contracts

- versioned APIs
- event streaming
- capability/proof/memory contracts
- compatibility tests

### Wave 12 — 3.0 release qualification

- complete fault matrix
- longitudinal memory matrix
- multimodal matrix
- security matrix
- clean install/restart matrix
- public/work/sovereign profile matrix
- ProofGrid release seal

## 8. What 3.0 explicitly does NOT do

- It does not create a second Atlas Mind.
- It does not create a second memory system beside THOTH.
- It does not replace JANUS with model judgment.
- It does not replace Workforce Spine with an external agent framework.
- It does not treat MCP or A2A as new internal architecture.
- It does not make cloud infrastructure mandatory for sovereign use.
- It does not grant arbitrary shell because a model can write code.
- It does not promote model catalogs as proof of inference.
- It does not claim simulated years are literal production years.
- It does not call an answer “done” when execution proof is absent.

## 9. Final 3.0 proof path

ATLAS MIND 3.0 is complete only when the following is proven on one correlated lineage:

USER INTENT
-> Atlas context assembly
-> policy-driven model selection
-> genuine model inference
-> THOTH recall
-> model plan
-> Packet OS
-> JANUS authorization
-> Workforce execution
-> MetaForge/tool/sandbox action when needed
-> SECA/DevOS qualification
-> Medusa policy check
-> ProofGrid receipt
-> THOTH world-state commit
-> Atlas grounded synthesis
-> process/device restart
-> memory/task recovery
-> continuation without lineage loss

Then repeat the proof in hosted, local, and hybrid product profiles.

Only after those proofs exist should Atlas Mind 3.0 be stamped PROVEN and promoted as the canonical installable release.
