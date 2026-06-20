# Story Bible Operations

## Create

Copy `assets/story-bible-template/` into the user's project as `story-bible/`.

If a project already has a story bible, inspect existing files before changing schema. Add missing columns through update candidates rather than overwriting user records.

## Source of Truth

Use this priority order:

1. manuscript text
2. explicit writer decision
3. accepted editorial decision
4. external research source for real-world facts
5. derived inference
6. chat history

Chat history can suggest candidates but cannot make canon by itself.

## Before Drafting

Read:

- `00-index.md`
- `canon-ledger.md`
- relevant character/location/timeline/scene/thread/setup files
- `glossary.md`
- `style-guide.md`
- `continuity-issues.md`

Then produce a short "loaded context" note:

- active canon
- active character states
- current timeline position
- open plot threads
- open setup/payoff items
- style constraints
- known risks

## After Drafting

Produce update candidates for:

- canon, including `source_basis` and confidence
- terms and spelling variants
- characters, including desire, secret, knowledge, and relationship changes
- locations
- timeline in actual chronology and narrative disclosure order
- scene ledger with goal, conflict, turn, knowledge change, canon impact
- plot threads
- setup/payoff and fair-play clue matrix
- world rules
- relationships
- style guide
- continuity issues
- revision queue

Do not silently overwrite canon.

## Canon Update Rules

- Use `canon` only when established by manuscript or explicit writer/editorial decision.
- Use `proposed` for ideas not yet on the page.
- Use `uncertain` for implication or incomplete evidence.
- Use `retconned` for replaced canon; do not delete the old row.
- Add a revision queue item when changing canon requires manuscript repair.

## Mystery and Twist Projects

For every required clue:

- add visible form
- add true meaning
- add misleading inference
- mark reader access
- mark detective/protagonist access
- state fairness test
- connect setup to payoff

The story fails continuity if the final solution depends on evidence never shown to the reader.

## Korean Manuscript Projects

When the manuscript is Korean:

- maintain standard spelling and spacing policy in `style-guide.md`
- record intentional dialect and character voice exceptions
- keep canonical spellings and banned variants in `glossary.md`
- do not normalize dialogue if the nonstandard form is an intentional voice rule
