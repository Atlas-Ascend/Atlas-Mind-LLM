# PWA PRODUCTION PROMOTION 002 — 2026-09-13

Campaign: `GA-ATLAS-MIND-PWA-ORGANISM-V1-2026-09-13`
Canonical owner: `Atlas-Ascend/Atlas-Mind-LLM`
Web source: `Atlas-Ascend/nextjs-ai-chatbot`
Merged PR: `#31`
Source candidate SHA: `a93bb702d32da7c8da4e58614ad7ab095d9febae`
Production merge SHA: `a1a1300f3b85ab75fc249f42dd49f2a0b9ab7f04`
Production Vercel deployment: `dpl_5ttuzP3aAeKj4KErWA6o6mDbgb3g`
Production state: `READY`
Primary domain: `https://atlasmind.global`
Secondary domain: `https://www.atlasmind.global`

## Production build proof

The merged `main` production deployment independently re-ran the campaign proof stack and passed:

- frozen pnpm install: PASS;
- Atlas v1 ingress boundary: PASS;
- Atlas PWA / consumer / operator source contract: PASS;
  - 18 required files checked;
  - PWA standalone start route `/organism`;
  - `/try` preserved as bounded public evaluator;
  - `/atlas` preserved as protected operator surface;
  - push-to-talk mode `PUSH_TO_TALK_REVIEW_BEFORE_SEND`;
  - voice does not auto-submit;
  - five private cache boundaries checked;
  - public PWA proxy boundary PASS;
- public portal registry contract: PASS;
  - 66 registered public routes;
  - 66 unique routes;
  - 24 internal module links checked;
  - 10 required trust/legal/status/release roots checked;
- governed Atlas execution contract suite: 11/11 PASS;
- Next.js optimized production compile: PASS;
- TypeScript: PASS;
- static generation: 112/112 PASS;
- Vercel production deployment: READY.

## Production route smoke

### PWA manifest — PASS

`https://atlasmind.global/manifest.webmanifest`

Observed:
- HTTP 200;
- `application/manifest+json`;
- name `Atlas Mind`;
- start URL `/organism`;
- scope `/`;
- display `standalone`;
- 192px + 512px Atlas icons;
- shortcuts for `/try`, `/organism`, `/atlas`.

### Service worker — PASS

`https://atlasmind.global/sw.js`

Observed:
- HTTP 200;
- public shell paths include `/`, `/try`, `/organism`, manifest, and install icons;
- service worker deliberately excludes `/api/`, `/login`, `/register`, `/chat/`, and `/atlas` from its public shell cache path.

### Consumer organism hub — PASS

`https://atlasmind.global/organism`

Observed HTTP 200 with:
- `One mind. Many execution bodies.`;
- install control / install guidance;
- links to `/try`, `/trust`, and `/atlas`;
- explicit `AUTHORITY BOUNDARY` copy;
- consumer conversation is not represented as private Estate mutation authority.

### Bounded public evaluator — PASS

`https://atlasmind.global/try`

Observed HTTP 200 with:
- `PUBLIC EVALUATOR / BOUNDED MODE`;
- no Estate entitlements;
- `No implied execution`;
- public prompt input;
- PWA metadata;
- push-to-talk bridge present in the production bundle.

### Consumer homepage install doorway — PASS

`https://atlasmind.global/`

Observed HTTP 200 with:
- primary `TRY ATLAS` link to `/try`;
- fixed `ORGANISM / INSTALL` link to `/organism`;
- PWA manifest/icon metadata;
- existing consumer/private-estate isolation copy retained.

### Operator negative authorization boundary — PASS

Unauthenticated request to `https://atlasmind.global/atlas` resolves through the existing Estate gate to `/admin-login?returnTo=%2Fatlas` and renders the `ADMIN ONLY / Cross the operator boundary` session UI.

Unauthenticated request to `https://atlasmind.global/api/atlas/operator` returns HTTP 401 with:

```json
{"ok":false,"code":"ESTATE_ADMIN_REQUIRED","message":"A current Ghost Atlas Estate operator session is required."}
```

This is direct production evidence that the operator API fails closed without a current Estate session.

### Sitemap boundary — PASS

`https://atlasmind.global/sitemap.xml` returns HTTP 200 and publishes `/try`, `/organism`, and the existing public registry while not publishing `/atlas` as consumer content.

## Domain promotion — PASS

The production deployment currently carries the `atlasmind.global` and `www.atlasmind.global` aliases. The prior domain-attachment uncertainty is therefore superseded by production deployment evidence.

## Persistence recheck — OPEN, unchanged

Production build logs still report:

`ATLAS_DB_URL_SOURCE=UNBOUND`

Neon project `atlas-mind-commercial` (`blue-silence-13723131`) was rechecked after promotion:

- production/default branch: `br-polished-boat-aesc3m08`;
- prepared schema branch: `br-orange-paper-aeu6itnz`;
- the prepared branch still contains the complete nine-table Atlas web persistence delta absent from production: `User`, `Chat`, `Message`, `Message_v2`, `Vote`, `Vote_v2`, `Document`, `Suggestion`, `Stream`, including the required relationships.

No production database migration was applied during this campaign. Applying the prepared migration remains a user-consent gate under the Neon migration contract.

## Other explicitly open proof gates

- real-device PWA install and standalone launch;
- positive Estate operator login/session proof on production;
- one production operator natural-language action through JANUS -> Packet/Workforce -> ProofGrid -> THOTH;
- Wave 00 signup -> inference -> governed execution -> browser restart -> re-auth -> same-chat recall/continue;
- EDEN resident heartbeat -> EDEN-targeted packet -> downstream proof/memory -> restart/recovery;
- Termux native conversational client reusing the same authenticated Atlas identity; current Ark implementation is a zero-secret PWA launcher only.

## GitHub hosted-runner distinction

GitHub Actions for the exact candidate repeatedly concluded red before executing source: `runner_id=0`, empty runner name, and `steps=[]`. These are hosted-runner allocation failures. They are not substituted for source proof; the exact candidate and merged production main were independently built and exercised through Vercel.

## Completion claim

`PWA_PRODUCTION_SURFACE_PROMOTED_AND_PUBLIC_BOUNDARIES_VERIFIED`

This claim covers the installable production web surface, route/public-private boundary, build reproducibility, consumer portal registry floor, and production domain promotion.

It does **not** claim Atlas Mind 3.0 completion, Wave 00 persistence closure, EDEN execution proof, positive operator execution, or real-device install completion.
