# Story Bible Schema

## 목적

이 문서는 `fiction-story-bible-manager`가 생성하고 유지할 `story-bible/` 문서 시스템의 실제 스키마다. 목표는 LLM이 장편소설의 인물, 용어, 배경, 사건, 문장, 복선, 회수, 세계 규칙을 채팅 히스토리가 아니라 명시적 문서로 기억하게 하는 것이다.

## 공통 규칙

- 모든 항목은 안정적인 ID를 가진다.
- 상태값은 `canon`, `proposed`, `uncertain`, `retconned`, `cut` 중 하나를 쓴다.
- `canon`은 원고나 작가 결정으로 확정된 정보다.
- `proposed`는 후보 설정이다.
- `uncertain`은 원고에 암시되었으나 확정되지 않은 정보다.
- `retconned`는 새 결정으로 무효화된 과거 canon이다.
- `cut`은 삭제된 원고나 폐기된 설정이다.
- 모든 canon은 `source_basis`를 가진다: `manuscript`, `writer_decision`, `research_source`, `derived_inference`, `editorial_decision`.
- `derived_inference`는 확정 canon이 아니라 검토 후보로 둔다. 원고나 작가 결정으로 확인되기 전에는 `uncertain`이다.
- 새 장면 작성 전에는 관련 canon을 읽는다.
- 새 장면 작성 후에는 업데이트 후보를 만든다.
- 문서 변경이 원고 수정을 요구하면 `revision-queue.md`에 기록한다.

## ID 규칙

ID는 다음 prefix를 사용한다.

```text
CANON-0001
TERM-0001
CHAR-0001
LOC-0001
TIME-0001
SCENE-0001
THREAD-0001
SETUP-0001
PAYOFF-0001
RULE-0001
REL-0001
ISSUE-0001
REV-0001
```

## `00-index.md`

```markdown
# Story Bible Index

## Project

- project_id:
- working_title:
- genre:
- subgenre:
- target_reader:
- reader_promise:
- theme_statement:
- current_draft_stage:
- canon_version:
- last_updated:

## Required Reading Before Drafting

- canon-ledger.md
- characters.md
- timeline.md
- scene-ledger.md
- foreshadowing-payoff-ledger.md

## Current Focus

- active_chapter:
- active_scene:
- active_threads:
- active_character_arcs:
- open_continuity_issues:

## Example

- project_id: NOVEL-EXAMPLE
- working_title: The Glass Kingdom
- genre: fantasy mystery
- reader_promise: 궁정 음모와 마법 규칙의 진실이 공정한 단서로 풀린다.
- theme_statement: 권력은 진실을 숨기지만, 기억은 형태를 바꿔 돌아온다.
- canon_version: v0.1
```

## `canon-ledger.md`

```markdown
# Canon Ledger

| canon_id | status | statement | source_basis | source_scene_id | first_mentioned_in | last_confirmed_in | related_entities | constraints | evidence_confidence | revision_notes |
|---|---|---|---|---|---|---|---|---|---|---|
| CANON-0001 | canon | 왕실의 유리관은 거짓말에 반응해 금이 간다. | manuscript | SCENE-0003 | CH01 | CH03 | RULE-0001, LOC-0002 | 마법사는 직접 조작할 수 없다. | high | 없음 |
```

사용 규칙:

- 원고에 이미 등장한 확정 사실만 `canon`으로 둔다.
- 작가 아이디어는 `proposed`로 둔다.
- 현실 리서치에 근거한 설정은 `source_basis`에 `research_source`를 쓰고 출처를 관련 research log에 연결한다.
- 모순이 생기면 삭제하지 말고 `retconned`로 바꾸고 `revision_notes`에 사유를 남긴다.

## `glossary.md`

```markdown
# Glossary

| term_id | term | category | definition | canonical_spelling | variants_not_allowed | first_use | allowed_contexts | related_terms |
|---|---|---|---|---|---|---|---|---|
| TERM-0001 | 유리관 | artifact | 왕실의 재판 의식에 쓰이는 마법 물체. | 유리관 | 유리 관, 수정관 | CH01 | 궁정, 재판, 진실 판정 | RULE-0001 |
```

사용 규칙:

- 고유명사의 표기를 하나로 고정한다.
- 금지 변형 표기를 기록해 LLM이 임의 표기를 만들지 않게 한다.

## `characters.md`

```markdown
# Characters

| character_id | name | role | desire | need | wound_or_false_belief | secret | arc_state | voice_rules | relationships | known_by | forbidden_contradictions | scene_history |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| CHAR-0001 | 이란 | protagonist | 동생의 누명을 벗긴다. | 진실을 통제할 수 없다는 사실을 받아들인다. | 침묵이 가족을 지킨다고 믿는다. | 사건 당일 유리관이 이미 깨진 것을 봤다. | denial | 짧고 방어적인 문장, 감정 직접 진술 회피 | REL-0001 | CHAR-0002 | 유리관을 처음 본 적 없다고 쓰면 안 됨 | SCENE-0001, SCENE-0003 |
```

사용 규칙:

- 외형보다 욕망, 결핍, 비밀, 선택, 말투를 우선한다.
- 인물의 지식 상태는 `known_by`와 장면 기록으로 관리한다.

## `locations.md`

```markdown
# Locations

| location_id | name | type | description | rules | sensory_signature | events_here | continuity_constraints |
|---|---|---|---|---|---|---|---|
| LOC-0001 | 동쪽 재판정 | palace room | 천장에 푸른 유리가 박힌 왕궁 재판정. | 왕족만 중앙 원 안에 설 수 있다. | 찬 유리 냄새, 낮은 종소리 | SCENE-0003 | CH03 이후 균열이 남아 있어야 함 |
```

## `timeline.md`

```markdown
# Timeline

| event_id | story_date_or_relative_time | narrative_order | event_summary | characters_present | causes | effects | revealed_to_reader_at | hidden_until | continuity_risk |
|---|---|---|---|---|---|---|---|---|---|
| TIME-0001 | 12년 전 | revealed in CH04 | 첫 번째 유리관 균열 사건. | CHAR-0003 | RULE-0001 | 왕실이 기록을 봉인함 | CH04 | CH04 | medium |
```

사용 규칙:

- 실제 발생 순서와 독자에게 공개되는 순서를 분리한다.
- 회상 장면도 실제 시간축에 넣는다.

## `scene-ledger.md`

```markdown
# Scene Ledger

| scene_id | chapter | pov | location_id | time | scene_goal | conflict | turning_point | new_information | knowledge_changes | emotional_shift | setup_ids_planted | payoff_ids_triggered | canon_added | revision_flags |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| SCENE-0003 | CH01 | CHAR-0001 | LOC-0001 | present day | 동생 재판을 막는다. | 왕실 규칙 때문에 발언권이 없다. | 유리관에 균열이 생긴다. | 거짓말이 마법 반응을 일으킨다. | reader learns RULE-0001; CHAR-0001 misunderstands cause | 분노에서 공포로 이동 | SETUP-0001 |  | CANON-0001 | clarify rule cost |
```

사용 규칙:

- 장면은 목표, 갈등, 전환점 중 하나라도 비어 있으면 다시 설계한다.
- 장면이 새 canon을 만들면 `canon-ledger.md` 업데이트 후보를 만든다.
- `knowledge_changes`에는 독자, POV 인물, 주요 인물, 적대자가 각각 무엇을 알거나 오해하게 되는지 쓴다.

## `plot-thread-ledger.md`

```markdown
# Plot Thread Ledger

| thread_id | thread_type | dramatic_question | opened_in_scene | current_status | related_characters | required_payoff | resolution_scene |
|---|---|---|---|---|---|---|---|
| THREAD-0001 | mystery | 누가 유리관을 먼저 깨뜨렸는가? | SCENE-0003 | open | CHAR-0001, CHAR-0003 | 범인이 규칙 예외를 이용했음을 밝혀야 함 | planned CH18 |
```

상태값:

- `open`
- `complicating`
- `resolved`
- `dropped`
- `merged`

## `foreshadowing-payoff-ledger.md`

```markdown
# Foreshadowing Payoff Ledger

| setup_id | setup_type | clue_role | planted_in_scene | reader_visibility | visible_form | misleading_inference | true_meaning | intended_payoff | payoff_id | paid_off_in_scene | fairness_test | status | revision_action |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| SETUP-0001 | clue | required | SCENE-0003 | subtle | 균열이 왼쪽으로 길게 뻗어 있다. | 유리관 자체가 낡았다. | 균열 방향이 범인의 위치를 가리킨다. | 유리관 균열 방향이 범인의 위치를 가리킴 | PAYOFF-0001 | planned CH18 | 독자가 CH01 문장만으로 단서의 존재를 확인할 수 있다. | planted | CH06에서 한 번 reinforce |
```

상태값:

- `planned`
- `planted`
- `reinforced`
- `paid`
- `cut`
- `orphaned`

사용 규칙:

- `paid`가 되려면 `paid_off_in_scene`이 있어야 한다.
- `orphaned`는 회수 계획이 사라진 setup이다.
- payoff가 있는데 setup이 없으면 `continuity-issues.md`에 기록한다.
- 미스터리의 결정적 해답에 필요한 단서는 `clue_role`을 `required`로 두고 `fairness_test`를 반드시 작성한다.
- red herring은 거짓 단서가 아니라 가능한 오해다. `visible_form`은 사실이어야 하고, `misleading_inference`만 틀릴 수 있다.

## Fair Play Mystery Extensions

미스터리, 스릴러, 법정물, 음모물, 조사 중심 판타지/SF는 다음을 추가로 점검한다.

```markdown
| clue_id | true_meaning | visible_form | reader_access | detective_access | concealment_method | solution_dependency | reveal_scene | fair_replay_pass |
|---|---|---|---|---|---|---|---|---|
| SETUP-0001 | 범인은 서쪽 기둥 뒤에 있었다. | 균열이 왼쪽으로 뻗어 있다. | yes | partial | 문맥 오해 | required | SCENE-0042 | yes |
```

규칙:

- 중심 해답은 독자에게 공개되지 않은 증거로 해결하지 않는다.
- 우연, 설명 없는 직감, 갑작스러운 전문 지식은 중심 해답을 해결할 수 없다.
- 독자에게 숨길 수 있는 것은 의미, 맥락, 범주, 감정적 해석이지 결정적 증거의 존재 자체가 아니다.

## `world-rules.md`

```markdown
# World Rules

| rule_id | domain | rule | exceptions | cost_or_limit | shown_in_scene | cannot_contradict |
|---|---|---|---|---|---|---|
| RULE-0001 | magic | 유리관은 말이 아니라 의도된 거짓에 반응한다. | 기억이 조작된 사람은 반응시키지 않는다. | 한 번 반응하면 하루 동안 무력화된다. | SCENE-0003 | 거짓말 단어 자체에 반응한다고 쓰면 안 됨 |
```

## `relationship-map.md`

```markdown
# Relationship Map

| relationship_id | characters | public_relationship | private_truth | tension | trust_level | power_balance | changed_in_scene | current_state |
|---|---|---|---|---|---|---|---|---|
| REL-0001 | CHAR-0001, CHAR-0002 | 남매 | 동생은 누나가 증거를 숨겼다고 의심한다. | 보호 vs 불신 | 2/5 | CHAR-0001 has social power | SCENE-0004 | strained |
```

## `style-guide.md`

```markdown
# Style Guide

## Point of View

- pov_rules:
- tense:
- narrative_distance:

## Prose

- sentence_rhythm:
- allowed_register:
- banned_patterns:

## Dialogue

- dialogue_rules:
- character_voice_notes:

## Terms

- spelling_and_terms:

## Korean Manuscript Norms

- spacing_policy:
- punctuation_policy:
- loanword_policy:
- honorific_policy:
- dialect_policy:
- intentional_nonstandard_usage:
```

예시:

```markdown
- pov_rules: 3인칭 제한 시점. 장면마다 한 인물의 감각과 해석만 사용한다.
- tense: 과거형.
- narrative_distance: 감정이 격해질수록 문장을 짧게 한다.
- banned_patterns: 세계관 설명을 대화로 길게 떠넘기지 않는다.
- spacing_policy: 지문은 표준 띄어쓰기를 따른다. 대사는 인물별 말투를 위해 일부 비표준을 허용한다.
```

## `continuity-issues.md`

```markdown
# Continuity Issues

| issue_id | severity | description | conflicting_sources | affected_scenes | proposed_fix | status |
|---|---|---|---|---|---|---|
| ISSUE-0001 | major | CH01에서는 유리관이 하루 동안 무력화된다고 했지만 CH02에서 즉시 다시 반응함. | RULE-0001, SCENE-0003, SCENE-0005 | SCENE-0005 | CH02 반응을 다른 유물로 변경 | open |
```

severity:

- `blocker`
- `major`
- `minor`
- `style`

status:

- `open`
- `accepted`
- `fixed`
- `deferred`
- `rejected`

## `revision-queue.md`

```markdown
# Revision Queue

| revision_id | trigger | affected_scene_ids | required_change | priority | blocked_by | done |
|---|---|---|---|---|---|---|
| REV-0001 | ISSUE-0001 | SCENE-0005 | 유리관 반응 장면을 다른 증거 발견으로 바꾼다. | high |  | no |
```

priority:

- `critical`
- `high`
- `medium`
- `low`

done:

- `yes`
- `no`

## 장면 작성 후 업데이트 절차

장면을 작성하거나 수정한 뒤 `fiction-story-bible-manager`는 다음 순서로 업데이트 후보를 만든다.

1. 새 인물, 장소, 용어, 세계 규칙을 추출한다.
2. 확정 정보와 후보 아이디어를 분리한다.
3. 새 사건을 `timeline.md`에 추가한다.
4. 장면 기능을 `scene-ledger.md`에 추가한다.
5. 새 plot thread를 `plot-thread-ledger.md`에 추가한다.
6. 새 복선과 회수를 `foreshadowing-payoff-ledger.md`에 추가한다.
7. canon 충돌을 `continuity-issues.md`에 기록한다.
8. 원고 수정이 필요하면 `revision-queue.md`에 추가한다.

## 품질 검사

소설 장면이나 챕터가 생성된 뒤 다음을 검사한다.

- setup 없는 payoff가 있는가
- payoff 없는 setup이 orphaned 상태로 남았는가
- 시간순 사건과 원고 공개 순서가 충돌하는가
- 인물의 지식 상태가 장면마다 일관적인가
- 미스터리의 결정적 단서가 독자에게 공정하게 공개되었는가
- red herring의 보이는 사실과 틀린 추론이 구분되어 있는가
- 세계 규칙의 비용과 예외가 유지되는가
- 고유명사 표기가 흔들리는가
- 한국어 맞춤법, 띄어쓰기, 문장부호, 외래어 표기 정책이 style guide와 일치하는가
- 관계 변화가 장면 결과로 기록되었는가
- 큰 설정 변경이 revision queue로 전파되었는가
