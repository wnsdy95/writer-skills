# Foreshadowing Payoff Ledger

Setup types:

- `foreshadowing`
- `clue`
- `red_herring`
- `symbol`
- `rule`
- `object`
- `dialogue`

Clue roles:

- `required`: needed to solve a mystery/reveal fairly
- `supporting`: strengthens a later reveal
- `thematic`: pays off symbolically or emotionally
- `decorative`: texture only; should not be required for the solution

Status values:

- `planned`
- `planted`
- `reinforced`
- `paid`
- `cut`
- `orphaned`

| setup_id | setup_type | clue_role | planted_in_scene | reader_visibility | visible_form | misleading_inference | true_meaning | intended_payoff | payoff_id | paid_off_in_scene | fairness_test | status | revision_action |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| SETUP-0001 | clue | required | SCENE-0001 | subtle | The glass crack points left. | The object is merely old. | The crack direction locates the culprit. | Later reveal this clue's real meaning. | PAYOFF-0001 | planned CH18 | A rereader can find the clue before the reveal. | planted | Reinforce in CH06. |

Rules:

- A major payoff requires a setup.
- A conspicuous setup requires payoff, conversion to red herring, or removal.
- If payoff exists without setup, create a continuity issue.
- If setup loses payoff, mark `orphaned` and queue revision.
- Required mystery clues must pass the fairness test before the reveal scene is considered complete.
- A red herring must have a true visible form and a false interpretation.
