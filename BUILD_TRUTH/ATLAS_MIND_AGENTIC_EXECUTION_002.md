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
