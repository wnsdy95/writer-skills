# Source Quality Rubric

## Purpose

Use this rubric to decide whether a source is strong enough for a book's claim. Match source quality to claim risk. The higher the reader harm or reputational risk, the stronger the source requirement.

## Source Tiers

| Tier | Type | Useful for | Limits |
|---|---|---|---|
| A | Primary records, laws, data, archival documents, original studies | factual claims, timelines, direct evidence | may require interpretation |
| B | Peer-reviewed research, expert consensus, official guidance | health, science, policy, scholarly claims | may be technical or outdated |
| C | Expert interviews, professional manuals, institutional reports | practical judgment, field context | may include institutional bias |
| D | Reputable journalism and trade publishing | public events, market context, narrative leads | secondary and error-prone |
| E | Memoir, personal essay, lived-experience account | subjective experience and perspective | not general proof |
| F | Social posts, forums, marketing pages, unsourced blogs | leads, language, audience sentiment | not reliable evidence alone |

## Evaluation Criteria

Score each criterion from 0 to 2.

| Criterion | 0 | 1 | 2 |
|---|---|---|---|
| Authority | unknown | plausible | named expert/institution/original source |
| Proximity | hearsay | secondary | primary/direct |
| Currency | outdated | acceptable | current for the claim |
| Transparency | no method | partial method | clear method/evidence |
| Independence | strong conflict | possible conflict | independent or disclosed |
| Corroboration | alone | partially corroborated | corroborated by strong sources |
| Harm sensitivity | risky unsupported claim | moderate risk | proportionate support for risk |

Interpretation:
- 12-14: strong
- 8-11: usable with limits
- 4-7: lead only unless low-stakes
- 0-3: do not use as evidence

## Claim Thresholds

| Claim type | Minimum source quality |
|---|---|
| fictional texture | D/E acceptable if not asserting fact |
| personal experience | E, clearly framed as personal |
| practical advice | C plus examples or testing |
| historical factual claim | A or strong D with corroboration |
| health/medical claim | B plus expert review for publication |
| legal/financial advice | official/professional source plus expert review |
| allegation about real person | primary evidence plus legal review |

## Source Quality Matrix

```markdown
| claim_id | claim | risk | source_id | source_tier | score | support_level | limits | action |
|---|---|---|---|---|---|---|---|---|
```

Support levels:
- `supported`
- `partly-supported`
- `context-only`
- `lead-only`
- `unsupported`
- `remove-or-rewrite`
