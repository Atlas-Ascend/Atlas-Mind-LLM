# ATLAS MIND AGENTIC EXECUTION 002

## Cloud execution law — 2026-09-12

For the current production phase, Ghost Atlas / EDEN AGI runs through the cloud control fabric. Local EDEN/Ollama is not the production processor path until explicitly reintroduced by a later migration.

### Canonical provider responsibility split

- **Base44 — rapid application / operational interface layer**
  - fast-build internal apps, operator utilities, intake surfaces, diagnostics, workflow consoles, and lightweight business tools;
  - may call governed backend APIs but is not source-of-truth for code, proof, or durable estate state.

- **Neon — canonical cloud data/state plane**
  - Postgres system of record for commands, CaseGraphs, packets, workers, dispatches, events, proofs, memory indexes, service registry, runtime presence, telemetry, and application state;
  - branching is used for safe schema/testing workflows;
  - no other provider should become an independent competing system of record.

- **GitHub — source control / CI / Build Truth plane**
  - canonical repositories, branches, commits, PRs, Actions, release artifacts, Build Truth, audit trail, code review, dependency/build/test evidence;
  - software mutation is promoted through GitHub lineage before production deployment.

- **Vercel — Atlas Mind and public/edge application plane**
  - Atlas Mind conversational frontend, public websites, edge/serverless UI routes, previews, production web deployment, Vercel workload OIDC, and AI-facing web ingress;
  - browser/UI logic lives here, while persistent workers and long-running execution do not.

- **Render — persistent runtime / API / worker execution plane**
  - JANUS-gated runtime APIs, GA-NIF stable edge, Workforce workers, long-running services, command-to-proof orchestration, WebSockets/SSE where needed, provider adapters, ProofGrid/THOTH runtime steps;
  - all state-changing execution routes through JANUS and proof gates.

- **monday.com — human/work orchestration and operating-management plane**
  - campaigns, sprints, queues, assignments, status, approvals, human escalation, CRM/client work, recurring operating cadence, and management dashboards;
  - monday coordinates work and people; it does not replace Packet OS, JANUS, Neon state, or GitHub source truth.

### Cloud control path

Operator / Atlas Mind
→ Vercel
→ Render GA-NIF / command ingress
→ JANUS
→ Packet OS / Workforce
→ provider capability adapters
→ SECA / DevOS / Medusa
→ ProofGrid
→ THOTH
→ Neon durable state
→ Atlas Mind / operator

Cross-provider management path:
Base44 operational apps ↔ Render governed APIs ↔ Neon state
monday.com work management ↔ GitHub delivery truth / Render runtime status
GitHub source → Vercel web deployment + Render runtime deployment

### Provider authority boundaries

- Base44 may present and compose workflows; it does not certify execution.
- Neon persists state; it does not authorize state-changing actions.
- GitHub proves code lineage; a commit is not runtime proof.
- Vercel hosts cognition/web surfaces; it does not own persistent workforce execution.
- Render executes persistent runtime work; it does not become product/source truth.
- monday.com coordinates human work; a monday status is not ProofGrid evidence.

### Current sprint direction

GA-NIF-PROCESSOR-BINDING-004 must bind a **cloud model processor** into the existing stable GA-NIF edge. Preferred current order is:
1. a cloud AI/model gateway already available inside the chosen cloud provider fabric;
2. another approved OpenAI-compatible cloud processor;
3. local EDEN/Ollama only in a later explicit local-runtime migration.

The production processor must remain behind server-side authentication and the existing Vercel OIDC → Render trust boundary. No browser credential, no naked model port, no fake model advertisement.

### Cloud-only current-phase constraint

Until explicitly lifted by the Architect, production execution must stay inside the cloud fabric: **Base44 + Neon + GitHub + Vercel + Render + monday.com**. Physical EDEN, local Ollama, JANUS/ODIN phones, GAIA, ARK hardware, and other local nodes may remain represented in topology/registry but are not required dependencies for current production availability.

### Proof law

BUILT != TESTED != RUNNING != CONNECTED != EXECUTING != RECEIPTED != VERIFIED != PROVEN != PROMOTED.

## Production closure evidence — 2026-09-12T21:49:19Z

Status: **OPEN — production model-native command-to-proof canary not verified**.
The cloud execution law above remains authoritative.

### Current production source and deployment

- Atlas Mind source: `nextjs-ai-chatbot@13eb24c73dfc9b39632e66d8402b8ac4403844de`.
- Vercel deployment: `dpl_7Zf5Q9wEy11fKXqXdB1YSgy4TRE3`, `READY`, `target=production`, alias `atlasmind.global`.
- Render gateway: `dep-dais8plg1s2s738ija3g`, `live`, source `EXECUTION-FABRIC-LIVE-OPERATIONS-THEATER@ffe59956c7329ddd9dfd60cacbb66383b7a7dedd`.
- JANUS: `dep-dais1j5g1s2s738hpgc0`, `live`, source `Janus-Prime@b84837c7e7f6f1cdc0e4fb5af7d2daf16bd434fc`.

### Bounded inference attempt: failed before model output

The existing production `app/api/atlas/v1/neon-inference-canary/route.ts`
was invoked once at the immutable deployment URL. Its source obtains Vercel
workload OIDC and submits a fixed, non-executing marker prompt to the existing
Render `/atlas/v1/infer` endpoint.

Observed HTTP response: `502`. Vercel request reference:
`sfo1:iad1::iad1::hwpph-1789249744789-57df9df4547a`.

- `verified=false`; `markerObserved=false`.
- `model=null`; `runtime=null`; `receipt=null`.
- Failure code: `GA_NIF_INFERENCE_EDGE_FAILURE`.
- Upstream account error: `NEON_AI_GATEWAY_HTTP_403:ai gateway not enabled for account`.
- `completionClaim=NONE`.

This is an observed provider-account failure, not a successful inference or
ProofGrid execution receipt. No new endpoint, provider, credential, deployment,
model, or infrastructure was created by this verification attempt.

### Model-native route remains a separate acceptance gate

At the same production source, `app/(chat)/api/chat/route.ts` uses
`myProvider.languageModel(selectedChatModel)` with `executeAtlasObjective`.
`lib/ai/providers.ts` still binds those Chat SDK models to Vercel AI Gateway.
The newer GA-NIF Neon adapter sends a prompt-only OpenAI-compatible inference
request; it does not establish that authenticated chat has migrated or that
model tool calling occurred.

Issue [#3](https://github.com/Atlas-Ascend/Atlas-Mind-LLM/issues/3) records the
earlier Vercel `customer_verification_required` HTTP 403. That remains historical
failure evidence; this attempt did not re-run Vercel model inference or certify
that account's current activation state.

A bounded read of today's `estate_runs` on runtime project
`ancient-mud-00515851`, branch `br-winter-base-aw38f9v5`, found no rows matching
the agentic campaign, processor-binding campaign, Atlas-Mind-Model payload marker,
or a model command. This scoped negative search does not assert that no unrelated
model activity exists elsewhere.

Closure still requires the production model to select `executeAtlasObjective`,
the existing workload/OIDC and deterministic planner/JANUS gates to accept the
bounded command, an actual execution with matching ProofGrid and THOTH readback,
and a model synthesis grounded in those tool results. A marker-only inference,
historical deterministic command, READY deployment, or account configuration
cannot substitute for that sequence. Resolve account activation through the
existing provider account; preserve the current cloud-only scope and source owners.
