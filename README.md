# Writer Skills

Writer Skills는 책 프로젝트를 진단하고 필요한 리서치, 구조 설계, 집필, 개정, 검증 흐름으로 라우팅하는 Codex skill 모음입니다.

주 사용자는 한국어로 책을 쓰는 작가, 편집자, 기획자입니다. 단순 조언보다 명명된 산출물, 체크리스트, 장부, 검증 기준을 우선합니다.

## Skills

- `book-project-architect`: 책 아이디어를 분류하고 필요한 작업 흐름으로 라우팅합니다.
- `book-research-designer`: 리서치, 출처 품질, 팩트체크 계획을 설계합니다.
- `book-structure-designer`: 콘셉트, 독자 약속, 목차, 챕터 카드를 설계합니다.
- `book-drafting-editor`: 초고 작성, 개정 패스, 원고 품질 점검을 관리합니다.
- `fiction-book-writing`: 플롯, 인물 아크, 장면, 시점, 복선과 회수를 설계합니다.
- `fiction-story-bible-manager`: canon, 타임라인, 장면, 관계, setup/payoff, 연속성, revision queue를 관리합니다.
- `narrative-nonfiction-writing`: 실제 사건, 기억, 인터뷰, 아카이브를 서사 구조로 정리합니다.
- `practical-nonfiction-writing`: 독자 변화, 프레임워크, 연습, 체크리스트를 설계합니다.
- `scholarly-technical-writing`: 학술, 기술, 전문 분야의 논지, 개념, 근거, 설명 구조를 설계합니다.
- `visual-hybrid-book-writing`: 이미지, 캡션, 펼침면, 패널, 레시피, 시각 순서가 핵심인 책을 설계합니다.
- `high-stakes-book-review`: 의료, 법률, 금융, 범죄, 정치, 실명 인물, 취약 집단 등 고위험 원고를 검토합니다.

## Layout

```text
skills/                 Codex skill packages
research/               Writing, publishing, research, and risk reference material
story-bible-template/   Reusable fiction continuity template
docs/                   Skill contracts, story bible schema, verification report
scripts/                Local verification scripts
```

## Core Rules

- 모든 책 프로젝트는 먼저 분야, 책 유형, 독자, 현재 단계, 증거 부담, 위험도로 진단합니다.
- 장르 분류와 작업 흐름 분류를 함께 사용합니다.
- 답변은 일반 조언이 아니라 `Book Project Diagnosis`, `Research Plan`, `Table of Contents`, `Revision Checklist`, `Risk Register` 같은 명명된 산출물로 끝나야 합니다.
- 고위험 주제는 `high-stakes-book-review` 기준을 적용하거나 명시적으로 라우팅합니다.
- 복잡한 소설은 채팅 히스토리에만 의존하지 않고 `story-bible/` 또는 `story-bible-template/`를 기준으로 작업합니다.
- 긴 설명과 기준 지식은 `references/` 또는 `research/`에 두고, `SKILL.md`는 실행 규칙과 출력 계약에 집중합니다.

## Skill Package Rules

각 skill package는 다음 구조를 지켜야 합니다.

```text
skills/<skill-name>/
  SKILL.md
  agents/openai.yaml
  references/
```

규칙:

- `SKILL.md` frontmatter에는 `name`과 `description`만 둡니다.
- `name`은 디렉터리 이름과 같아야 합니다.
- `description`은 언제 이 skill을 써야 하는지 구체적으로 설명해야 합니다.
- `agents/openai.yaml`의 default prompt는 해당 `$skill-name`을 명시해야 합니다.
- `SKILL.md`에서 언급한 `references/...` 파일은 실제로 존재해야 합니다.
- `fiction-story-bible-manager`는 `assets/story-bible-template/`를 포함해야 합니다.

## Story Bible Rules

`story-bible-template/`는 장편 소설 프로젝트에 복사해서 쓰는 연속성 관리 문서 세트입니다.

- 모든 엔티티에는 안정적인 ID를 둡니다.
- 확정 정보와 아이디어를 섞지 않습니다.
- 상태값은 `canon`, `proposed`, `uncertain`, `retconned`, `cut`을 사용합니다.
- 시간순 사건과 원고상 공개 순서를 분리합니다.
- 복선은 `setup_id`, 회수는 `payoff_id`로 연결합니다.
- 문서 변경이 원고 수정을 요구하면 `revision-queue.md`에 기록합니다.

자세한 필드와 템플릿 규칙은 [docs/story-bible-schema.md](docs/story-bible-schema.md)를 봅니다.

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

## Out of Scope

- 전체 원고를 자동으로 대신 작성하는 시스템
- 외부 DB나 웹 앱
- 자동 인용 관리 도구 연동
- 전문 법률, 의학, 금융 검토 대체
- 채팅 히스토리만으로 장편 소설 설정을 기억하는 방식

## Safety

This repository includes guidance for high-risk nonfiction review, but it does not replace professional legal, medical, financial, or subject-matter review.

## License

MIT. See [LICENSE](LICENSE).
