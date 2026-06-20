# Revision Queue

Priority values:

- `critical`
- `high`
- `medium`
- `low`

| revision_id | trigger | affected_scene_ids | required_change | priority | blocked_by | done |
|---|---|---|---|---|---|---|
| REV-0001 | ISSUE-0001 | SCENE-0002 | Change scene to match canon. | high |  | no |

Rules:

- Add a revision item whenever bible changes require manuscript changes.
- Do structural, arc, timeline, and setup/payoff revisions before line polish.
- Mark `done` only after affected scenes are actually updated.
