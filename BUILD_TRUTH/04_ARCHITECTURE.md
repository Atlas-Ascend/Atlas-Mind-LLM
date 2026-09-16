# 04 — Architecture

Planes: conversation/runtime adapter, context assembler, model router, retrieval/tool planner, structured-output layer, policy/authority boundary, response composer, evaluation harness.

Model family is replaceable beneath stable Atlas Mind contracts. Local/cloud models can coexist behind capability routing.

## Canonical identity and runtime binding

Atlas Mind has one persistent identity across substrates and historical versions. `ATLAS_MIND_RUNTIME_BINDING.json` is the machine-readable compatibility authority for Model Zero, V2, V3, V4, Atlas Mind 3.0, OMNIMIND compatibility, Atlas Mind Office context, GA-NIF inference, and the EDEN execution/proof return path.

Historical Atlas labels are lineage or surface coordinates; they do not create parallel assistants. VEVR remains a forensic hold and must fail closed until original source provenance establishes its role.

Canonical implementation ownership:

- identity/product contract: `Atlas-Ascend/Atlas-Mind-LLM`;
- persistent identity runtime: `Atlas-Ascend/Eden-2.0/atlas-mind-runtime`;
- inference/model selection: GA-NIF;
- context: Atlas Mind Office + SAMI + THOTH + World State;
- authority: JANUS/ODIN;
- durable work: Packet OS + Workforce Spine;
- execution: EDEN;
- verification/proof: SECA/DevOS + ProofGrid;
- durable continuity: THOTH.

The convergence adapter is `Atlas-Ascend/Eden-2.0/scripts/atlas_mind_converged_ingress.py`. It subclasses the existing Office Fabric / GA-NIF ingress and adds canonical identity/lineage resolution and model-agnostic processor selection; it is not a replacement runtime.

Closed loop:

`operator -> Atlas Mind -> GA-NIF -> JANUS/ODIN -> Packet OS -> Workforce Spine -> EDEN -> SECA/DevOS -> ProofGrid -> THOTH -> same Atlas Mind conversation`.
