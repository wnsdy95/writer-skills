# Writer Skills

[![License: MIT](https://img.shields.io/github/license/wnsdy95/writer-skills?style=flat-square)](LICENSE)
![Codex Skills](https://img.shields.io/badge/Codex-Skills-111827?style=flat-square)
![Markdown](https://img.shields.io/badge/Markdown-Docs-000000?style=flat-square&logo=markdown)
![YAML](https://img.shields.io/badge/YAML-Agent%20Metadata-CB171E?style=flat-square&logo=yaml&logoColor=white)
![Shell](https://img.shields.io/badge/Shell-Verification-4EAA25?style=flat-square&logo=gnubash&logoColor=white)

Writer Skills is a collection of Codex skill packages, reference files, and reusable templates for planning, researching, drafting, editing, and reviewing book projects.

The project is designed for writers, editors, and publishing workflows that need concrete deliverables instead of generic writing advice. Skills are expected to end with named outputs such as diagnoses, research plans, chapter cards, revision checklists, risk registers, continuity ledgers, and next-action plans.

## Quick Start

```bash
git clone https://github.com/wnsdy95/writer-skills.git
cd writer-skills
```

Copy the skill packages you want from `skills/` into a Codex skills directory, or use this repository as a source collection for your own writing workflow.

For complex fiction projects, copy `story-bible-template/` into your project as `story-bible/` and use it as the source of truth for canon, characters, timelines, scenes, relationships, setup/payoff, continuity issues, and revision needs.

Example prompts:

```text
Use $book-project-architect to diagnose this book idea and route the next workflow.
Use $fiction-story-bible-manager to create a story bible from these notes.
Use $high-stakes-book-review to review this chapter for evidence and reader-harm risk.
```

## Skills

- `book-project-architect`: classifies a book idea and routes it into the right workflow.
- `book-research-designer`: designs research, source-quality, and fact-checking plans.
- `book-structure-designer`: turns ideas and research into concepts, tables of contents, and chapter cards.
- `book-drafting-editor`: plans drafting loops, revision passes, and manuscript quality checks.
- `fiction-book-writing`: designs fiction through plot, character arcs, scenes, POV, pacing, and payoff.
- `fiction-story-bible-manager`: maintains canon, timelines, scenes, relationships, setup/payoff, continuity, and revision queues.
- `narrative-nonfiction-writing`: structures real-event storytelling with evidence-aware narrative design.
- `practical-nonfiction-writing`: builds reader transformation frameworks, exercises, and checklists.
- `scholarly-technical-writing`: plans scholarly, technical, professional, and research-based books.
- `visual-hybrid-book-writing`: designs books where text, image, spread, caption, panel, recipe, or visual sequence is structural.
- `high-stakes-book-review`: reviews manuscripts for evidence, ethics, privacy, legal exposure, and reader harm.

## Repository Layout

```text
skills/                 Codex skill packages
research/               Writing, publishing, research, and risk reference material
story-bible-template/   Reusable fiction continuity template
docs/                   Skill contracts, story bible schema, verification report
scripts/                Local verification scripts
```

## Requirements

- A Codex environment with custom skill support
- `uv` for running the verification script
- The Codex `skill-creator` validator, only if you want to validate package structure locally

## Core Principles

- Diagnose every book project by domain, book type, reader, current stage, evidence burden, and risk level.
- Use both market/genre classification and workflow classification.
- End responses with named deliverables, not loose advice.
- Route high-risk topics through `high-stakes-book-review` or apply its review criteria directly.
- For complex fiction, rely on explicit story bible files rather than chat history alone.
- Keep long explanations and domain knowledge in `references/` or `research/`; keep `SKILL.md` focused on operating rules and output contracts.

## Skill Package Rules

Each skill package should follow this structure:

```text
skills/<skill-name>/
  SKILL.md
  agents/openai.yaml
  references/
```

Rules:

- `SKILL.md` frontmatter should contain only `name` and `description`.
- `name` must match the directory name.
- `description` must clearly state when the skill should be used.
- `agents/openai.yaml` must mention the matching `$skill-name` in its default prompt.
- Every `references/...` path mentioned in `SKILL.md` must exist.
- `fiction-story-bible-manager` must include `assets/story-bible-template/`.

## Story Bible Rules

`story-bible-template/` is a reusable continuity system for long-form fiction projects.

- Every entity should have a stable ID.
- Confirmed canon and speculative ideas should not be mixed.
- Allowed status values are `canon`, `proposed`, `uncertain`, `retconned`, and `cut`.
- Chronological event order and manuscript reveal order should be tracked separately.
- Setups should connect to payoffs through `setup_id` and `payoff_id`.
- Any story bible update that requires manuscript changes should be recorded in `revision-queue.md`.

For field-level details, see [docs/story-bible-schema.md](docs/story-bible-schema.md).

## Documentation

- [Skill contracts](docs/skill-contracts.md): trigger rules, required references, and required outputs for every skill.
- [Story bible schema](docs/story-bible-schema.md): field-level schema for the reusable fiction continuity template.
- [Verification report](docs/verification-report.md): implementation coverage and validation notes.
- [Contributing](CONTRIBUTING.md): contribution rules and review expectations.
- [Security](SECURITY.md): private reporting and safety scope.

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

## Limitations

- This is a skill and reference collection, not a full writing application.
- It does not automatically install skills into every Codex environment.
- It does not replace professional legal, medical, financial, editorial, or subject-matter review.
- It does not manage citations, bibliographies, manuscripts, or project state through an external database.
- It does not guarantee factual accuracy; high-risk claims still require source checking and expert review.
- It does not remember long-form fiction canon unless the project uses explicit story bible files.
- It does not yet include exhaustive genre-specific skills for every market category or publishing format.

## Future Direction

- Add clearer installation guidance for different Codex skill locations and workflows.
- Add more example prompts and before/after output samples for each skill.
- Expand genre-specific references for fiction, nonfiction, technical books, visual books, and children's books.
- Add optional templates for research logs, interview plans, source matrices, and manuscript revision trackers.
- Improve validation so package structure, links, references, and story bible templates can be checked in CI.
- Add regression-style prompt tests that verify each skill routes to the expected deliverables.
- Explore packaging or release automation for easier installation and versioning.

## Out of Scope

- Replacing the author, editor, researcher, or expert reviewer
- Building a web app, external database, or automated citation manager
- Generating a complete manuscript without author direction and review
- Treating chat history as a reliable memory system for complex long-form projects

## Safety

This repository includes guidance for high-risk nonfiction review, but it does not replace professional legal, medical, financial, or subject-matter review.

## License

MIT. See [LICENSE](LICENSE).
