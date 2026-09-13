# PWA PREVIEW PROOF 001 — 2026-09-13

Campaign: `GA-ATLAS-MIND-PWA-ORGANISM-V1-2026-09-13`
Web source repo: `Atlas-Ascend/nextjs-ai-chatbot`
PR: `#31`
Exact candidate SHA: `a93bb702d32da7c8da4e58614ad7ab095d9febae`
Vercel deployment: `dpl_7fjdtNYzV8ddBaqh5i14UGwF4TMe`
Vercel state: `READY`
Preview URL: `https://nextjs-ai-chatbot-3cdiawgc9-ghost-atlas.vercel.app`

## Exact-head build evidence

The Vercel deployment cloned exactly `a93bb702d32da7c8da4e58614ad7ab095d9febae` from branch `convergence/atlas-mind-pwa-organism-v1-2026-09-13` and completed the normal production build command.

Observed PASS:

- frozen pnpm install: PASS (`Lockfile is up to date`);
- Atlas v1 ingress gate: PASS;
- Atlas consumer/PWA source contract: PASS;
  - 18 required files checked;
  - PWA start route `/organism`;
  - `/try` preserved as `BOUNDED_EVALUATOR`;
  - `/atlas` preserved as operator surface;
  - voice mode `PUSH_TO_TALK_REVIEW_BEFORE_SEND`;
  - five private/cache boundaries checked;
  - public PWA proxy boundary PASS;
- public route registry gate: PASS;
  - 66 registered routes;
  - 66 unique routes;
  - 24 internal module links checked;
  - 10 required trust/legal/status/release roots checked;
- governed Atlas execution contract suite: 11/11 PASS;
  - packet/proof/THOTH lineage;
  - fail-closed JANUS fallback;
  - correlation/packet/proof/memory mismatch failures;
  - destructive intent denial;
  - step-budget enforcement;
- Next.js optimized production compile: PASS;
- TypeScript: PASS;
- static generation: 112/112 PASS;
- deployment output creation: PASS;
- Vercel deployment state: READY.

## Route build inventory observed

The exact build includes the intended surfaces and APIs, including:

- `/`
- `/try`
- `/organism`
- `/atlas`
- `/status`
- `/releases`
- `/login`
- `/register`
- `/chat/[id]`
- `/api/public/try`
- `/api/chat`
- `/api/atlas/operator`
- Atlas v1 inference/execution/status/capability/receipt routes.

## Failures distinguished from source defects

GitHub Actions on the same exact SHA concluded red without executing source: the job had `runner_id=0`, empty runner name, and `steps=[]`. This is a hosted-runner allocation/infrastructure failure. It does not contradict the independent Vercel exact-head build, which executed the source and passed the gates above.

An earlier voice-mount candidate failed Next.js 16 prerender because `usePathname()` was outside Suspense. Exact SHA `a93bb702...` contains the bounded repair: `AtlasVoiceDock` is isolated behind React Suspense and the full build passes.

## Explicit open gates

This receipt does NOT claim Atlas Mind product completion.

Still open:

- build logs explicitly report `ATLAS_DB_URL_SOURCE=UNBOUND`;
- Wave 00 regular-user persistence / restart / recall remains OPEN under Atlas-Mind-LLM issue #9;
- preview HTTP route smoke is constrained by Vercel Preview Protection and is not substituted by build proof;
- real-device PWA install/standalone launch remains OPEN;
- custom `atlasmind.global` attachment is not currently listed on the connected Vercel `nextjs-ai-chatbot` or legacy `atlas-mind-live-surface` projects and remains a DNS/release gate;
- EDEN-targeted command-to-proof remains OPEN until an EDEN heartbeat, packet, proof, THOTH readback, and restart/recovery lineage is observed;
- Termux has a zero-secret PWA launcher but terminal-native conversational identity reuse remains OPEN;
- production operator auth/session usability must be runtime-proven; source presence of `/atlas` is not sufficient.

## Completion claim

`PWA_SOURCE_AND_PREVIEW_BUILD_PROVEN`

`PRODUCTION_PROMOTION_AND_RUNTIME_SMOKE_PENDING`

`WAVE00_PERSISTENCE_OPEN`
