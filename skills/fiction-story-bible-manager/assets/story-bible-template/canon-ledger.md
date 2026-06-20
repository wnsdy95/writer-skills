# Canon Ledger

Status values:

- `canon`: established by manuscript or writer decision
- `proposed`: candidate idea
- `uncertain`: implied but not established
- `retconned`: formerly canon, now replaced
- `cut`: removed from manuscript or plan

Source basis values:

- `manuscript`: established on the page
- `writer_decision`: confirmed by explicit author/project decision
- `research_source`: grounded in an external research source
- `derived_inference`: inferred from existing material, not yet confirmed
- `editorial_decision`: established by revision/editorial decision

| canon_id | status | statement | source_basis | source_scene_id | first_mentioned_in | last_confirmed_in | related_entities | constraints | evidence_confidence | revision_notes |
|---|---|---|---|---|---|---|---|---|---|---|
| CANON-0001 | canon | Example established fact. | manuscript | SCENE-0001 | CH01 | CH01 | CHAR-0001 | Do not contradict this. | high |  |

Rules:

- Treat this as the single source of truth.
- Do not delete contradicted canon. Mark it `retconned` and explain why.
- If a draft creates new facts, add update candidates here before continuing.
- Do not mark an inference as `canon` until it is confirmed by manuscript evidence or writer decision.
