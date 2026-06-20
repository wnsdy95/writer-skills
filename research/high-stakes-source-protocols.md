# High-Stakes Source Protocols

## Purpose

High-stakes books can change reader behavior or affect real people. These protocols define the minimum evidence burden by domain. They apply to nonfiction, narrative nonfiction, historical fiction with real events, medical/legal/finance practical books, true crime, biography, journalism-like projects, and technical/safety manuals.

## Universal Rules

- Separate claim, source, interpretation, and advice.
- Record jurisdiction, date, population, and scope.
- Prefer current official, primary, peer-reviewed, or professional sources.
- Use informal sources only as leads or audience-language evidence.
- Escalate to expert review when a reader could make health, legal, financial, safety, or reputational decisions from the book.
- If the threshold is not met, soften the claim, add a limit, source it, defer it, or remove it.

## Claim Classification

| claim type | examples | minimum action |
|---|---|---|
| descriptive low-risk | "many writers keep notes" | credible source or clearly framed observation |
| practical instruction | "do this exercise daily" | tested method, limits, contraindications if relevant |
| causal claim | "X causes Y" | strong evidence, counterevidence, scope |
| professional advice | medical, legal, financial, safety | official/professional source plus expert review |
| real-person allegation | crime, abuse, negligence, misconduct | primary evidence, corroboration, legal review |
| historical interpretation | contested events, sensitive identity claims | primary sources plus reputable historiography |
| technical implementation | code, protocol, security, machinery | official docs/specs, tested examples, safety warning |

## Domain Protocols

| domain | preferred sources | required checks | escalation trigger |
|---|---|---|---|
| Medicine/health | MedlinePlus-style source evaluation, clinical guidelines, Cochrane/systematic reviews, peer-reviewed studies, official public-health agencies | currency, population, contraindications, study type, conflict of interest, limits, "not medical advice" framing | reader may change diagnosis, treatment, medication, diet, exercise, pregnancy, child care, mental-health, or emergency behavior |
| Law | statutes, regulations, official legal information systems, court decisions, bar/professional materials, jurisdiction-specific guides | jurisdiction, effective date, current status, procedural context, distinction between law and general information | reader may act on rights, contracts, litigation, immigration, taxes, employment, family law, criminal exposure |
| Finance/investment | regulators, disclosure filings, audited reports, prospectuses, official statistics, consumer warnings | date, market, risk, fees, assumptions, conflicts, no guaranteed returns, Korean versus US source separation | reader may invest, borrow, insure, trade, retire, or make tax decisions |
| History | primary archives, contemporaneous records, scholarly monographs, peer-reviewed articles, reputable translations | provenance, date, author perspective, translation, historiographical dispute, chronology | contested atrocity, identity, territorial, political, religious, colonial, or living-memory claims |
| Biography/memoir | interviews, letters, diaries, public records, authorized materials, independent corroboration | consent, privacy, memory limits, right of reply for serious claims, distinction between memory and documented fact | living people, private facts, allegations, trauma, minors, workplace or family claims |
| True crime | court filings, judgments, police/prosecution records where public, reputable reporting, interviews with consent | victim dignity, presumption of innocence where relevant, sealed/minor records, timeline, legal review | naming suspects, alleging motive, describing victims, accusing institutions, monetizing recent harm |
| Scholarly/academic | peer-reviewed literature, academic presses, datasets, DOI metadata, citation indexes, expert review | literature coverage, counterarguments, citation accuracy, methodology limits | original scholarly claim, contested field, public policy implication |
| Technical/safety | official documentation, standards, RFCs, vendor advisories, tested examples, security guidance | version, platform, dependency, reproducibility, failure mode, security risk, unsafe misuse | code can break systems, expose data, create safety risk, or guide regulated work |

## Medicine/Health Protocol

Use MedlinePlus-style questions for every health source:

- Who runs the source?
- What is the purpose?
- Who funds it?
- Who reviewed it?
- What sources does it cite?
- How current is it?
- Does it distinguish evidence from opinion?
- Does it tell readers to consult qualified care for decisions?

Evidence ladder:

1. Current official clinical/public-health guidance
2. Systematic review or evidence synthesis, such as Cochrane
3. Peer-reviewed clinical study appropriate to the claim
4. Professional textbook or expert consensus
5. Expert interview used for interpretation, not as the only proof
6. Personal anecdote framed only as personal experience

## Legal Protocol

Every legal claim must include:

- jurisdiction
- source type: statute, regulation, case, agency guidance, professional commentary
- effective date or decision date
- current-status check
- distinction between general information and legal advice
- expert review requirement if the book gives action guidance

For Korean legal content, start with official legal information systems such as law.go.kr and court portals, then add professional interpretation where needed.

## Finance Protocol

Every finance claim must include:

- market/jurisdiction
- date of data
- source: regulator, filing, audited report, official statistics, prospectus, or professional source
- assumptions
- risk and uncertainty
- fees/taxes/liquidity limits where relevant
- conflict-of-interest notes

Do not write guaranteed-outcome language. Do not turn backtested or anecdotal results into promises.

## History and Archive Protocol

Archive-based work must record:

- archive or database
- collection
- document title or identifier
- creator
- date
- provenance
- access date
- language/translation notes
- uncertainty and competing interpretation

For historical fiction, factual research should be separated from invented narrative so readers and future drafting passes do not confuse them.

## Biography and True Crime Protocol

Use a "human harm" screen:

- Is the person living?
- Is the person private or public?
- Is the fact private, traumatic, identifying, or reputational?
- Is the claim independently corroborated?
- Was the source legally/publicly obtained?
- Does the manuscript need anonymization, permission, or legal review?
- Does the narrative sensationalize victims or vulnerable people?

True crime output must include a source map and a legal/ethics risk register before drafting.

## Scholarly and Technical Protocol

Scholarly books require:

- literature map
- citation style
- argument map
- counterargument map
- source hierarchy
- definition ledger
- review by domain expert if the author is outside the field

Technical books require:

- version matrix
- reproducible examples
- official documentation links
- dependency and environment notes
- standards/RFC/spec references where relevant
- security and safety warnings
- tested code or clearly marked pseudocode

## Output Template

```markdown
## Risk Register

| claim_id | domain | claim | source_threshold | current_sources | missing_sources | reader_harm | expert_review | action |
|---|---|---|---|---|---|---|---|---|
| CLAIM-0001 | health |  | official guideline + evidence synthesis + expert review |  |  | high | physician/relevant specialist | source before drafting |
```

## Rejection Conditions

The skill should refuse to present a claim as settled when:

- the only source is a forum, social post, marketing page, or unsourced blog
- the claim would guide medical/legal/financial action without professional review
- a real-person allegation lacks primary evidence and corroboration
- a historical claim ignores well-known counterevidence or contested interpretation
- a technical procedure is untested and could cause data loss, security exposure, or physical risk
