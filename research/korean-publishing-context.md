# Korean Publishing Context

## Purpose

This document adds Korean-language and Korean-market publishing context to the writer skills. It covers classification, ISBN and metadata, bookstore/platform categories, Korean prose norms, and web novel versus print expectations.

## Three Classification Layers

Korean book projects should not use one category system for every purpose.

| layer | primary use | examples | decision rule |
|---|---|---|---|
| Library/bibliographic | Discovery, cataloging, research positioning | KDC, DDC, library subject headings | Use for institutional discoverability and scholarly positioning. |
| Publishing metadata | ISBN, product data, supply-chain exchange | Korean book number, add-on code, ONIX metadata | Use for publication registration, distribution, bookstore feeds, and product identity. |
| Bookstore/platform merchandising | Reader discovery and sales shelf | bookstore categories, genre shelves, keywords, platform tags | Use for audience promise, comparison titles, listing strategy, and cover/copy expectations. |

Operational rule: a project needs all three when preparing for publication. KDC/DDC can say where a book belongs intellectually; ISBN and ONIX say how the product travels; bookstore/platform categories say how readers find and compare it.

## ISBN and Korean Book Number

The National Library of Korea ISBN system treats the Korean book number as ISBN plus a local add-on code. The ISBN identifies the publication internationally; the add-on code communicates Korean publishing-market information such as reader target, format, and content category.

Minimum fields to track before publication:

- publisher identity and publisher number status
- title and subtitle
- contributor roles
- edition and format
- print book, ebook, audiobook, or other format
- target reader
- expected ISBN or existing ISBN
- add-on reader target code
- add-on format code
- add-on content classification
- publication date
- price
- page count or extent
- series title and volume number
- language
- rights territory
- distribution channel

Do not treat ISBN content classification as a complete marketing category. Research on Korean online bookstores found that category assignment can differ between bookstores even when top-level categories are similar, so sales categorization still needs live bookstore/category research.

## ONIX and Distribution Metadata

The Publication Distribution Integrated Network describes metadata as structured book information used by bookstores, libraries, educators, and readers. It also frames modern book metadata as machine-readable exchange rather than prose description.

Minimum metadata packet for skills:

| field | why it matters |
|---|---|
| title/subtitle | Search, display, positioning. |
| contributor names and roles | Rights, discoverability, credibility. |
| ISBN/product identifier | Supply-chain identity. |
| format | Print, ebook, audiobook, workbook, card deck, etc. |
| category and subject codes | Bookstore/library routing. |
| reader target | Age, expertise, use case, market shelf. |
| description | Sales copy and metadata feed. |
| table of contents | Browsing and educational discoverability. |
| keywords | Search and platform matching. |
| series metadata | Continuity, volume order, reader expectation. |
| publication date and availability | Release planning. |
| price and currency | Commerce. |
| cover image | Storefront conversion and catalog display. |
| author bio | Trust, positioning, press kit. |
| accessibility notes | Digital publishing and library/service interoperability. |

Skill rule: when `book-project-architect` diagnoses a project as publishable or near-publication, it should ask for or create a metadata checklist separate from the manuscript outline.

## Korean Bookstore and Platform Categories

Bookstore categories are market interfaces, not neutral taxonomies. For Korean projects, research should include:

- Kyobo, Yes24, Aladin, and major ebook stores if the project targets general book retail
- Naver Series, KakaoPage, RIDI, Munpia, Joara, or genre-specific platforms if the project targets web fiction
- category path, subcategory, ranking shelf, keywords, comparison titles, cover conventions, blurb patterns, episode/chapter packaging
- whether similar books are sold as literary fiction, genre fiction, essay, practical nonfiction, business, humanities, self-help, youth, or children's

Output fields:

```markdown
- primary_market_category:
- secondary_market_category:
- bookstore_category_paths:
- platform_tags:
- comparison_titles:
- cover_positioning_notes:
- description_positioning_notes:
- category_conflicts:
```

## Web Novel and Genre Fiction Context

Korean web novels are not just "novels on the web." Academic research describes them as platform-shaped, mobile-readable, genre-hybrid, and often serialized around episode-level tension. Genres can combine flexibly: romance fantasy, modern fantasy, academy, possession/transmigration, regression, hunter, villainess, contract marriage, BL, martial arts, and many other tag clusters.

Use this as a research rule, not a formula:

- scan current platform category pages and ranking lists before choosing genre labels
- record genre promise, episode promise, and monetization/readability pressure separately
- design early episodes around quick orientation, clear desire, immediate friction, and a return hook
- do not let platform convention excuse weak causality, inconsistent character logic, or unearned payoff
- when converting web serial to print, redesign pacing around chapters, parts, and whole-book arc rather than simply collecting episodes

## Korean Prose and Editorial Norms

Use National Institute of Korean Language norms for standard spelling, spacing, punctuation, foreign word notation, and standard-language questions.

However, fiction and narrative nonfiction also use voice. Therefore record:

- standard prose rules
- intentional dialect
- character-specific speech patterns
- register: literary, colloquial, academic, journalistic, genre, youth, business
- banned spellings and preferred spellings
- loanword and romanization policy
- punctuation style
- numerals, dates, units, and honorifics

Style-guide rule: standardize narration more strictly than dialogue unless the project intentionally uses nonstandard narration.

## Korean Publishing Research Checklist

Before finalizing a Korean book plan, create:

- `classification_matrix`: KDC/DDC, ISBN add-on, bookstore category, platform tags
- `metadata_packet`: title, contributors, format, description, TOC, keywords, series, price, release date
- `style_policy`: spelling, spacing, punctuation, loanwords, dialect, honorifics, numerals
- `market_scan`: 10-20 comparable titles or platform works, with category path and promise
- `rights_and_risk_notes`: real people, quotations, images, copyrighted lyrics, medical/legal/finance claims
- `publication_route`: traditional publisher, independent print, ebook, web serial, crowdfunding, course-linked book, internal document

## Routing Rules for Skills

- `book-project-architect`: always include Korean metadata/category notes when the target language or market is Korean.
- `book-research-designer`: require a bookstore/platform scan when category affects structure, cover, title, or reader promise.
- `fiction-book-writing`: distinguish literary/print novel pacing from web-serial episode pacing.
- `fiction-story-bible-manager`: add Korean term/spelling rules to `glossary.md` and `style-guide.md`.
- `book-drafting-editor`: run a Korean style pass after structural revision, not before.
- `high-stakes-book-review`: apply official Korean sources for Korean law, finance, public health, and real-person risk.
