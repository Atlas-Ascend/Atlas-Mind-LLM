# 03 — System Context

Inputs: operator conversation, **SAMI resident brief**, Thoth memory, MAAT state, Mind-As-OS architecture, NAVI pattern signals, Cipher translations, MythOS annotations, Runtime Observatory health, capability registry.

Canonical live estate context is read from the Runtime Gateway at:

`GET https://ghost-atlas-runtime-gateway.onrender.com/v1/sami/brief`

Schema: `ghost-atlas/sami/resident-brief/v1`.

SAMI is a reconciler/projection layer, not execution authority. Atlas Mind may use the brief to summarize current estate posture, identify attention queues, select additional read-only inspection, and prepare a proposed command.

Outputs: structured intent to JANUS/Packet OS, capability requests to CrownGrid, explanations to operator surfaces, memory candidates to governed memory paths.

**State-changing output MUST cross JANUS PRIME.** Atlas Mind MUST NOT convert a SAMI observation directly into an estate mutation or treat SAMI queue membership as authorization.