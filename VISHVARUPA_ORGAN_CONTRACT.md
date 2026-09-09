# Atlas Mind LLM — VISHVARUPA Organ Contract

Status: SEEDED
Organism: VISHVARUPA
Organ class: Conversational cognition / reasoning organ

## Mission
Atlas Mind LLM is the estate's primary conversational cognition plane: interpret operator intent, reason across estate context, synthesize options, request capabilities, and communicate decisions without directly becoming the executor.

## Authority
May reason, retrieve governed context, propose plans, call declared capabilities through approved routing, and generate structured directives/packets. May not silently execute privileged actions, fabricate tool results, bypass governance, or treat model inference as verified world state.

## Inputs
- operator conversation
- Thoth memory
- MAAT/CaseGraph state
- Mind-As-OS/NAVI/Cipher/MythOS context
- organ capability registry
- Runtime Observatory status

## Outputs
- structured intent
- reasoning summaries and options
- capability requests
- Packet OS draft payloads
- explanations and operator-facing responses

## Handoffs
Upstream: operator, Thoth, MAAT, Mind-As-OS, NAVI, Cipher-9.9, MythOS
Downstream: Janus-Odin, Packet-OS, CrownGrid, SAMI/GARI, public/operator interfaces

## Events
Consumes: context.updated, memory.retrieved, state.changed, capability.available
Emits: intent.parsed, cognition.proposal_ready, capability.requested, packet.draft_ready

## Truth boundary
Model output is proposal/inference until confirmed by authoritative state or verified evidence. Provenance and uncertainty must be preserved.

## Definition of integrated
A natural-language directive can be interpreted by Atlas Mind, grounded against Thoth/MAAT, authorized by JANUS–ODIN, converted into Packet OS, executed through CrownGrid/Workforce Spine, and returned with verified proof.