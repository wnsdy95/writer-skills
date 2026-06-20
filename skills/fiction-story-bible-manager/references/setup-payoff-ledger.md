# Setup Payoff Ledger

Required columns:

- setup_id
- setup_type
- planted_in_scene
- reader_visibility
- intended_payoff
- payoff_id
- paid_off_in_scene
- status
- revision_action

Status values:
- planned
- planted
- reinforced
- paid
- cut
- orphaned

If a payoff has no setup, create a continuity issue. If a setup loses payoff, mark it orphaned and add a revision item.
