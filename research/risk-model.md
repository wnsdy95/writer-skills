# Risk Model

## Purpose

Use this model to identify book projects that require stronger evidence, expert review, legal/ethical review, sensitivity review, or claim softening.

## Risk Domains

| Domain | Risk | Required handling |
|---|---|---|
| Medical/health | physical harm, false hope, delayed care | current high-quality sources, expert review, cautious language |
| Legal | bad legal decisions | jurisdiction clarity, expert/legal review, no personalized advice |
| Finance/investment | monetary loss | source current data, disclose uncertainty, avoid guarantees |
| Crime/true crime | defamation, privacy, trauma | primary evidence, legal review, victim sensitivity |
| Real people | reputational harm, privacy | consent where possible, minimize unnecessary private facts |
| Politics/social conflict | inflammatory framing, factual disputes | precise sourcing, opposing evidence review |
| Vulnerable groups | stereotyping, exploitation | sensitivity review, avoid extractive framing |
| History | contested interpretation, anachronism | source map and historiographic context |
| Copyright | infringement | permissions, fair use assessment, quote limits |
| Plagiarism | trust and legal risk | citation, paraphrase integrity, source notes |

## Risk Register Template

```markdown
| risk_id | claim_or_material | domain | severity | affected_people | evidence_needed | mitigation | owner | status |
|---|---|---|---|---|---|---|---|---|
```

Severity:
- `low`
- `medium`
- `high`
- `severe`

Status:
- `open`
- `mitigated`
- `needs-expert-review`
- `needs-legal-review`
- `remove-or-rewrite`

## Sensitive Claims Log

Use for any claim that could affect reputation, money, health, safety, or privacy.

```markdown
| claim_id | exact_claim | source_support | counter_evidence | risk | required_change |
|---|---|---|---|---|---|
```

## Expert Review Triggers

Require expert review when:
- medical, legal, or financial advice could change reader behavior
- a book alleges wrongdoing by a real person or organization
- a technical manual could create safety/security risk
- the writer lacks domain expertise and the claim is central
- readers are children, patients, victims, or otherwise vulnerable

## Safer Writing Moves

- Replace universal claims with scoped claims.
- Separate personal experience from general advice.
- Name uncertainty.
- Cite the strongest source near the claim.
- Remove unnecessary identifying details.
- Use composite characters only with transparent handling in nonfiction contexts.
- Keep allegations tied to evidence, not implication.
