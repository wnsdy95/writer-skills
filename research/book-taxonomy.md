# Book Taxonomy for Writers

## Purpose

Use this taxonomy to classify a book project before research, structure, drafting, or risk review. Do not rely on a single genre label. Classify across market fit, knowledge domain, manuscript form, reader, evidence burden, research method, risk, and publishing intent.

## Source Families

- BISAC and Thema: Use as market and discovery categories. They help position a book for bookstores, metadata, recommendations, and comparable titles.
- LCC, KDC, and DDC: Use as library and knowledge-domain categories. They help identify intellectual neighbors and research collections.
- Writer workflow taxonomy: Use as the primary execution model. It determines what the writer must do next.

## Eight Axes

| Axis | Question | Use |
|---|---|---|
| Market classification | Where would readers or bookstores expect this book? | Metadata, comparable books, shelf positioning |
| Knowledge domain | What body of knowledge does it depend on? | Source search, experts, terminology |
| Manuscript form | What kind of text/image object is being made? | Structure pattern and drafting workflow |
| Reader | Who must understand, trust, or enjoy it? | Tone, depth, examples, assumed knowledge |
| Evidence burden | What must be proven or verified? | Research depth and citation rigor |
| Research method | How will the author know what is true/useful? | Project plan and source matrix |
| Risk level | What harm can errors cause? | Expert review, sensitivity review, legal/ethical checks |
| Publishing intent | Why will the book exist? | Scope, length, polish, proposal strategy |

## Manuscript Forms

### Fiction

Signals:
- invented events are central
- reader promise depends on narrative pleasure, emotional truth, genre expectation, theme, and aesthetic execution
- research supports plausibility, not proof

Subtypes:
- literary fiction
- genre fiction
- historical fiction
- fantasy/science fiction
- mystery/thriller
- romance
- YA fiction

Required workflows:
- premise and theme
- plot and character arc
- scene list
- world/reality research
- story bible if long, serial, mystery-heavy, or continuity-heavy

### Narrative Nonfiction

Signals:
- real people, real events, memory, documents, interviews, or archives drive the book
- narrative scenes are used, but factual accountability remains high

Subtypes:
- memoir
- biography
- history
- reportage
- true crime
- investigative nonfiction

Required workflows:
- evidence map
- interview/archive plan
- timeline
- scene-vs-source boundary
- privacy/defamation review

### Practical Nonfiction

Signals:
- reader wants a transformation, method, framework, decision tool, or repeatable practice
- usefulness matters more than exhaustive proof, but claims still need proportionate evidence

Subtypes:
- self-help
- business
- education
- career
- productivity
- manual
- guidebook

Required workflows:
- reader problem map
- transformation promise
- framework design
- exercises/checklists
- claim moderation

### Scholarly or Technical Book

Signals:
- expertise, research, technical accuracy, definitions, and conceptual hierarchy dominate
- reader may be a student, practitioner, researcher, engineer, or policy specialist

Subtypes:
- scholarly monograph
- technical manual
- science/engineering book
- developer book
- policy/industry analysis
- research-based textbook

Required workflows:
- argument map
- literature review
- concept hierarchy
- examples, figures, tables, code, or formulas
- citation plan

### Visual or Hybrid Book

Signals:
- images, spreads, panels, recipes, maps, diagrams, or captions are structurally central

Subtypes:
- picture book
- comics/graphic novel
- photo book
- cookbook
- travel book
- catalog
- field guide
- art book

Required workflows:
- page/spread plan
- image research
- caption/text system
- production notes
- rights and asset tracking

## Evidence Burden

| Level | Description | Examples | Minimum handling |
|---|---|---|---|
| Experiential | Based mainly on personal experience | memoir, essay, creative process | clarify subjectivity and limits |
| Reported | Based on interviews, cases, observation | profile, reportage, business case | keep source notes and consent |
| Practical | Based on method, examples, repeatable advice | how-to, self-help, education | test usefulness and avoid overclaiming |
| Documentary | Based on records, archives, publications | history, biography, true crime | maintain evidence map |
| Technical | Based on expert knowledge or system behavior | engineering, medicine, law, finance | expert review and current sources |
| Scholarly | Based on literature and formal argument | academic books | literature review and citation system |

## Risk Levels

| Level | Trigger | Required response |
|---|---|---|
| Low | invented or low-stakes creative material | normal continuity/style review |
| Moderate | factual claims, professional advice, named institutions | source quality check |
| High | health, law, finance, crime, real people, private facts | high-stakes review |
| Severe | direct advice that may cause harm, allegations, vulnerable people | expert/legal/sensitivity review before publication |

## Routing Rules

- If the request is "I want to write a book" with no type, start with `book-project-architect`.
- If the user asks "what should I research" or "how do I verify", use `book-research-designer`.
- If the user asks for concept, reader promise, or table of contents, use `book-structure-designer`.
- If the user asks for drafting or revision, use `book-drafting-editor`.
- If invented narrative is central, use `fiction-book-writing`.
- If a fiction project requires memory of canon, timelines, terms, plot threads, or setup/payoff, add `fiction-story-bible-manager`.
- If real people/events are central, use `narrative-nonfiction-writing`.
- If reader transformation or how-to application is central, use `practical-nonfiction-writing`.
- If expertise, research, code, formulas, or technical explanation dominate, use `scholarly-technical-writing`.
- If image/page sequence is central, use `visual-hybrid-book-writing`.
- If health, law, finance, crime, politics, real people, vulnerable groups, sensitive history, or allegations appear, add `high-stakes-book-review`.

## Classification Output Template

```markdown
## Book Project Diagnosis

- Market classification:
- Knowledge domain:
- Manuscript form:
- Reader:
- Evidence burden:
- Research methods:
- Risk level:
- Publishing intent:
- Primary skill:
- Supporting skills:
- Next action:
```
