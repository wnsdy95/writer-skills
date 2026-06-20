# Writer Collections Skill Contracts

## 공통 계약

모든 스킬은 다음 규칙을 따른다.

- 한국어 작가와 기획자를 기본 사용자로 가정한다.
- 사용자의 요청을 먼저 `분야`, `책 유형`, `독자`, `현재 단계`, `증거 부담`, `위험도`로 분류한다.
- 답변은 일반 조언이 아니라 명명된 산출물로 끝낸다.
- 고위험 주제는 `high-stakes-book-review` 기준을 적용하거나 명시적으로 라우팅한다.
- 복잡한 소설은 `fiction-story-bible-manager` 기준을 적용한다.
- 참조 파일이 필요한 경우 먼저 관련 reference를 읽고 답한다.

공통 산출물 이름:

```text
Book Project Diagnosis
Skill Routing
Research Plan
Source Quality Matrix
Book Concept Brief
Table of Contents
Chapter Card
Drafting Plan
Revision Checklist
Fact-check Log
Risk Register
Story Bible Index
Canon Ledger
Scene Ledger
Setup-Payoff Ledger
Continuity Issue Report
Revision Queue
Next Action Plan
```

## 1. `book-project-architect`

### Frontmatter

```yaml
name: book-project-architect
description: Diagnose book ideas and route them into the right writing workflow. Use when the user wants to plan a book, classify a book concept, choose a genre/category, define readers, scope research depth, identify risk level, or decide which writing/research/design/editing skill should be used next.
```

### Agent UI

- `display_name`: Book Project Architect
- `short_description`: 책 아이디어를 분류하고 필요한 리서치, 구조, 집필, 검증 흐름으로 라우팅합니다.
- `default_prompt`: 책 아이디어를 진단하고 실행 가능한 집필 계획으로 바꿔줘.

### Trigger

- 책을 쓰고 싶다
- 책 아이디어를 정리하고 싶다
- 어떤 분야/장르인지 모르겠다
- 목차 전에 방향을 잡고 싶다
- 리서치가 얼마나 필요한지 모르겠다
- 출판 목적과 독자를 정하고 싶다

### Required References

- `references/project-diagnosis.md`
- `references/taxonomy-router.md`
- `references/risk-routing.md`

### Required Output

- `Book Project Diagnosis`
- `Skill Routing`
- `Next Action Plan`

### Handoff

- 리서치 질문이 핵심이면 `book-research-designer`
- 목차/구조가 핵심이면 `book-structure-designer`
- 초고/개정이 핵심이면 `book-drafting-editor`
- 허구 서사면 `fiction-book-writing`
- 복잡한 소설 canon 관리가 필요하면 `fiction-story-bible-manager`
- 위험 주제면 `high-stakes-book-review`

## 2. `book-research-designer`

### Frontmatter

```yaml
name: book-research-designer
description: Design research plans for books across genres and fields. Use when the user needs literature review, interview plans, surveys, fieldwork, archive research, data analysis, case research, competitor book analysis, fact-checking, source quality assessment, or evidence planning for a book project.
```

### Agent UI

- `display_name`: Book Research Designer
- `short_description`: 책 프로젝트에 맞는 리서치 방법, 출처 품질, 팩트체크 계획을 설계합니다.
- `default_prompt`: 이 책을 쓰기 위한 리서치 계획을 설계해줘.

### Trigger

- 리서치 방법을 알고 싶다
- 자료조사를 어떻게 할지 모르겠다
- 인터뷰/설문/현장조사가 필요한지 알고 싶다
- 경쟁서를 분석하고 싶다
- 출처와 근거 수준을 정하고 싶다

### Required References

- `references/research-protocols.md`
- `references/source-quality-rubric.md`
- `references/fact-checking.md`

### Required Output

- `Research Plan`
- `Source Quality Matrix`
- `Fact-check Plan`
- `Next Action Plan`

### Handoff

- 출처가 의료/법률/금융 판단에 영향을 주면 `high-stakes-book-review`
- 리서치 결과를 목차로 바꿔야 하면 `book-structure-designer`

## 3. `book-structure-designer`

### Frontmatter

```yaml
name: book-structure-designer
description: Design book concepts, reader promises, central questions, arguments, tables of contents, chapter architecture, and chapter cards. Use when the user needs to turn an idea or research into a coherent book structure before drafting.
```

### Agent UI

- `display_name`: Book Structure Designer
- `short_description`: 책의 콘셉트, 독자 약속, 목차, 챕터 카드를 설계합니다.
- `default_prompt`: 이 책의 구조와 목차를 설계해줘.

### Trigger

- 목차를 만들고 싶다
- 책 구조를 잡고 싶다
- 챕터별 역할을 정하고 싶다
- 아이디어를 책의 형태로 바꾸고 싶다

### Required References

- `references/structure-patterns.md`
- `references/chapter-card-system.md`
- `references/book-concept-brief.md`

### Required Output

- `Book Concept Brief`
- `Table of Contents`
- `Chapter Card`
- `Structure Rationale`

### Handoff

- 목차 이후 초고 계획이 필요하면 `book-drafting-editor`
- 소설 장면 구조가 필요하면 `fiction-book-writing`

## 4. `book-drafting-editor`

### Frontmatter

```yaml
name: book-drafting-editor
description: Plan and manage book drafting, chapter writing, revision passes, developmental editing, line editing, proofreading, citation checks, and manuscript improvement. Use when the user wants to draft, revise, edit, or quality-check book manuscript material.
```

### Agent UI

- `display_name`: Book Drafting Editor
- `short_description`: 초고 작성, 개정 라운드, 개발편집, 문체 점검, 원고 품질 관리를 돕습니다.
- `default_prompt`: 이 원고의 초고 작성 또는 개정 계획을 만들어줘.

### Trigger

- 초고를 어떻게 쓸지 모르겠다
- 원고를 고치고 싶다
- 챕터를 작성하고 싶다
- 개정 순서를 정하고 싶다
- 문체와 구조를 점검하고 싶다

### Required References

- `references/drafting-revision-loops.md`
- `references/editing-passes.md`
- `references/manuscript-quality-check.md`

### Required Output

- `Drafting Plan`
- `Chapter Draft Checklist`
- `Revision Checklist`
- `Editing Pass Plan`

### Handoff

- 소설 장면의 canon 업데이트가 필요하면 `fiction-story-bible-manager`
- 전문 정보의 검증이 필요하면 `high-stakes-book-review`

## 5. `fiction-book-writing`

### Frontmatter

```yaml
name: fiction-book-writing
description: Design and write serious fiction with strong plot, character arcs, scenes, worldbuilding, point of view, theme, pacing, foreshadowing, and payoff. Use for literary fiction, genre fiction, fantasy, science fiction, mystery, thriller, romance, historical fiction, and YA fiction, especially when the user wants professional-level structure rather than generic serialized fiction.
```

### Agent UI

- `display_name`: Fiction Book Writing
- `short_description`: 플롯, 인물 아크, 장면, 세계관, 복선과 회수를 갖춘 장편소설을 설계합니다.
- `default_prompt`: 제대로 된 장편소설 구조와 장면 계획을 설계해줘.

### Trigger

- 소설을 쓰고 싶다
- 판타지/SF/미스터리/로맨스/역사소설을 설계하고 싶다
- 플롯과 인물 아크가 필요하다
- 장면 목록이 필요하다
- 복선과 회수를 설계하고 싶다

### Required References

- `references/fiction-craft-system.md`
- `references/scene-design.md`
- `references/plot-character-arc.md`
- `references/setup-payoff.md`

### Required Output

- `Story Premise`
- `Character System`
- `Plot Architecture`
- `Scene List`
- `Theme/Meaning Map`
- `Setup-Payoff Plan`
- `Story Bible Update Request`

### Handoff

- 장편/시리즈/canon/timeline 관리가 필요하면 `fiction-story-bible-manager`
- 역사적 사실 또는 실존 인물이 중요하면 `narrative-nonfiction-writing`와 `high-stakes-book-review` 기준을 함께 적용한다.

## 6. `fiction-story-bible-manager`

### Frontmatter

```yaml
name: fiction-story-bible-manager
description: Build and maintain a story bible for complex fiction. Use when the user needs to remember characters, terms, locations, world rules, canon, timelines, scene history, relationship changes, plot threads, foreshadowing, payoffs, continuity issues, or revision queues while writing a novel or series.
```

### Agent UI

- `display_name`: Fiction Story Bible Manager
- `short_description`: 장편소설의 canon, 인물, 용어, 타임라인, 복선과 회수를 문서 시스템으로 관리합니다.
- `default_prompt`: 이 소설의 스토리 바이블을 만들고 연속성 관리 체계를 잡아줘.

### Trigger

- 소설 설정을 기억하게 하고 싶다
- 인물/단어/배경/사건을 정리하고 싶다
- 타임라인을 관리하고 싶다
- 떡밥과 회수를 추적하고 싶다
- 이미 쓴 장면에서 canon을 추출하고 싶다
- 시리즈 바이블이 필요하다

### Required References

- `references/story-bible-operations.md`
- `references/continuity-checks.md`
- `references/setup-payoff-ledger.md`

### Required Assets

- `assets/story-bible-template/`

### Required Output

- `Story Bible Index`
- `Canon Ledger`
- `Entity Update Log`
- `Timeline Update`
- `Scene Ledger Update`
- `Setup-Payoff Ledger`
- `Continuity Issue Report`
- `Revision Queue`

### Handoff

- 새 장면을 설계해야 하면 `fiction-book-writing`
- 원고 개정 순서가 필요하면 `book-drafting-editor`

## 7. `narrative-nonfiction-writing`

### Frontmatter

```yaml
name: narrative-nonfiction-writing
description: Plan and write narrative nonfiction such as memoir, biography, history, reportage, true crime, investigative nonfiction, and real-event storytelling. Use when the project combines factual research with narrative scenes, timelines, interviews, archives, memory, interpretation, or real people.
```

### Agent UI

- `display_name`: Narrative Nonfiction Writing
- `short_description`: 회고록, 전기, 역사, 르포, 트루크라임 같은 서사형 논픽션을 설계합니다.
- `default_prompt`: 이 실제 사건/인물 기반 책을 서사형 논픽션으로 설계해줘.

### Trigger

- 회고록을 쓰고 싶다
- 전기/역사/르포/트루크라임을 쓰고 싶다
- 인터뷰와 아카이브가 필요하다
- 실제 인물과 사건을 장면화하고 싶다

### Required References

- `references/narrative-nonfiction-playbook.md`
- `references/evidence-map.md`
- `references/interview-archive-plan.md`

### Required Output

- `Narrative Spine`
- `Evidence Map`
- `Interview Plan`
- `Timeline`
- `Risk Register`

### Handoff

- 실명, 범죄, 의료, 법률, 금융, 정치사회 위험이 있으면 `high-stakes-book-review`

## 8. `practical-nonfiction-writing`

### Frontmatter

```yaml
name: practical-nonfiction-writing
description: Design practical nonfiction such as self-help, business, education, productivity, career, manuals, guidebooks, and how-to books. Use when the user wants reader transformation, frameworks, exercises, checklists, workflows, examples, and actionable chapters.
```

### Agent UI

- `display_name`: Practical Nonfiction Writing
- `short_description`: 자기계발, 비즈니스, 교육서, 매뉴얼, 가이드북을 실행 가능한 구조로 설계합니다.
- `default_prompt`: 이 실용서를 독자 문제 해결 중심으로 설계해줘.

### Trigger

- 자기계발서를 쓰고 싶다
- 비즈니스 책을 쓰고 싶다
- 매뉴얼/가이드북/교육서를 만들고 싶다
- 프레임워크와 체크리스트가 필요하다

### Required References

- `references/practical-nonfiction-playbook.md`
- `references/framework-design.md`
- `references/exercise-checklist-plan.md`

### Required Output

- `Reader Problem Map`
- `Transformation Promise`
- `Framework Design`
- `Exercise/Checklist Plan`
- `Practicality Review`

### Handoff

- 건강, 법률, 금융 조언이면 `high-stakes-book-review`

## 9. `scholarly-technical-writing`

### Frontmatter

```yaml
name: scholarly-technical-writing
description: Plan and write scholarly, technical, scientific, professional, policy, engineering, developer, and research-based books. Use when the project requires argument maps, literature review, concept hierarchy, technical explanations, citations, tables, figures, code, formulas, or expert-level structure.
```

### Agent UI

- `display_name`: Scholarly Technical Writing
- `short_description`: 학술서, 과학기술서, 전문서, 연구 기반 교재의 논지와 설명 구조를 설계합니다.
- `default_prompt`: 이 전문서의 논지, 근거, 설명 구조를 설계해줘.

### Trigger

- 학술서/기술서/전문서를 쓰고 싶다
- 선행연구나 문헌검토가 필요하다
- 기술 개념을 설명해야 한다
- 표, 그림, 코드, 수식이 필요하다

### Required References

- `references/scholarly-technical-playbook.md`
- `references/argument-map.md`
- `references/technical-explanation.md`

### Required Output

- `Argument Map`
- `Literature Review Plan`
- `Concept Hierarchy`
- `Technical Explanation Plan`
- `Citation Plan`

### Handoff

- 독자 피해 가능성이 있는 전문 조언이면 `high-stakes-book-review`

## 10. `visual-hybrid-book-writing`

### Frontmatter

```yaml
name: visual-hybrid-book-writing
description: Plan visual and hybrid books such as picture books, comics, graphic novels, photo books, cookbooks, travel books, catalogs, illustrated guides, and art books. Use when text, image, page sequence, captions, layout, spreads, and production notes are central to the book.
```

### Agent UI

- `display_name`: Visual Hybrid Book Writing
- `short_description`: 그림책, 만화, 사진집, 요리책, 여행서처럼 시각 중심 도서를 설계합니다.
- `default_prompt`: 이 시각 중심 책의 페이지와 이미지-텍스트 구조를 설계해줘.

### Trigger

- 그림책/만화/그래픽노블을 만들고 싶다
- 사진집/요리책/여행서를 만들고 싶다
- 페이지나 스프레드 단위 구조가 필요하다
- 이미지와 캡션의 역할을 정하고 싶다

### Required References

- `references/visual-hybrid-playbook.md`
- `references/page-spread-plan.md`
- `references/image-caption-system.md`

### Required Output

- `Visual Concept Brief`
- `Page/Spread Plan`
- `Image Research Plan`
- `Caption/Text System`
- `Production Notes`

### Handoff

- 아동 독자 대상이면 연령별 이해도와 보호자/교육 맥락을 함께 점검한다.
- 실존 인물/장소/상표/사진 권리가 중요하면 `high-stakes-book-review`

## 11. `high-stakes-book-review`

### Frontmatter

```yaml
name: high-stakes-book-review
description: Review high-risk book projects and manuscripts for evidence, ethics, legal exposure, privacy, defamation, copyright, expert review needs, and reader harm. Use for medicine, health, law, finance, true crime, politics, social conflict, real people, vulnerable groups, sensitive history, and any book where factual errors could cause harm.
```

### Agent UI

- `display_name`: High Stakes Book Review
- `short_description`: 고위험 원고의 근거, 윤리, 법적 노출, 개인정보, 전문가 검토 필요성을 점검합니다.
- `default_prompt`: 이 책의 위험한 주장과 검증 필요 사항을 점검해줘.

### Trigger

- 건강/의학 책
- 법률/금융/투자 조언
- 트루크라임
- 실명 인물
- 정치사회 갈등
- 취약 집단
- 민감한 역사
- 명예훼손/저작권/개인정보 우려

### Required References

- `references/risk-model.md`
- `references/evidence-thresholds.md`
- `references/expert-review-checklist.md`

### Required Output

- `Risk Register`
- `Evidence Threshold`
- `Expert Review Checklist`
- `Sensitive Claims Log`
- `Revision Requirements`

### Handoff

- 이 스킬은 전문 자문을 대체하지 않는다.
- 법률/의학/금융 판단이 필요한 경우 전문가 검토 필요성을 산출물에 명시한다.

## Forward Test Prompts

v1 검증 시 다음 프롬프트를 사용한다.

- "AI 시대 직업 변화를 다룬 대중 교양서를 쓰고 싶다."
- "조선 후기 실존 인물을 바탕으로 역사소설을 쓰고 싶다."
- "마법 규칙, 왕가 계보, 3권짜리 장기 떡밥이 있는 판타지 소설을 쓰고 싶다."
- "이미 5장을 썼는데 인물, 장소, 떡밥, 타임라인을 잊지 않도록 스토리 바이블을 만들어줘."
- "1장에서 심은 단서를 18장에서 회수하는 미스터리 장편 구조를 설계해줘."
- "암 환자 가족을 위한 실용서를 쓰고 싶다."
- "스타트업 창업자를 위한 B2B 세일즈 책을 쓰고 싶다."
- "내 가족사를 회고록으로 쓰고 싶은데 실명 공개가 걱정된다."
- "중학생을 위한 기후변화 그래픽노블을 만들고 싶다."
- "개발자를 위한 데이터베이스 성능 튜닝 책을 쓰고 싶다."
- "지역 음식 문화를 다룬 사진 중심 여행서를 만들고 싶다."
