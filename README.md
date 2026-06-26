# Writer Skills

Writer Skills is a collection of Codex skills, references, and templates for planning, researching, drafting, editing, and reviewing book projects.

The collection is built for authors, editors, and publishing workflows that need structured outputs rather than generic writing advice.

## Included Skills

- `book-project-architect`: classify a book idea and route it into the right workflow.
- `book-research-designer`: design research, source quality, and fact-checking plans.
- `book-structure-designer`: turn ideas and research into concepts, tables of contents, and chapter cards.
- `book-drafting-editor`: plan drafting loops, revision passes, and manuscript quality checks.
- `fiction-book-writing`: design serious fiction with plot, character arcs, scenes, POV, and payoff.
- `fiction-story-bible-manager`: maintain canon, timelines, setup/payoff ledgers, continuity, and revision queues.
- `narrative-nonfiction-writing`: structure real-event storytelling with evidence-aware narrative design.
- `practical-nonfiction-writing`: build reader transformation frameworks, exercises, and checklists.
- `scholarly-technical-writing`: plan technical, scholarly, professional, and research-based books.
- `visual-hybrid-book-writing`: design books where text, image, spread, caption, or sequence is structural.
- `high-stakes-book-review`: review manuscripts for evidence, ethics, privacy, legal exposure, and reader harm.

## Repository Layout

```text
skills/                 Codex skill packages
research/               Source-grounded writing and publishing reference material
story-bible-template/   Reusable fiction continuity template
docs/                   Implementation notes, contracts, and verification report
scripts/                Local verification scripts
```

## Use

Copy the skill directories you want from `skills/` into a Codex skills directory, or keep this repository as a source collection for building your own writing workflow.

For fiction projects that need continuity tracking, copy `story-bible-template/` into the project and treat it as the source of truth for canon, timelines, scenes, relationships, setup/payoff, and revision needs.

## Verify

Run:

```bash
scripts/verify-writer-collections.sh
```

The verifier requires the Codex `skill-creator` validator. If it is not in a default local location, set:

```bash
export SKILL_CREATOR_VALIDATOR=/path/to/skill-creator/scripts/quick_validate.py
scripts/verify-writer-collections.sh
```

## Safety Notes

This repository includes guidance for high-risk nonfiction review, but it does not replace professional legal, medical, financial, or subject-matter review.

## License

MIT. See [LICENSE](LICENSE).
