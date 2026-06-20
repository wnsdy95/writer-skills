#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VALIDATOR="/Users/dev/.aenv/envs/default/codex/skills/.system/skill-creator/scripts/quick_validate.py"

cd "$ROOT"

expected_research=(
  book-taxonomy.md
  methodology-map.md
  source-quality-rubric.md
  book-type-playbooks.md
  fiction-craft-system.md
  source-bibliography.md
  korean-publishing-context.md
  high-stakes-source-protocols.md
  risk-model.md
)

expected_story=(
  00-index.md
  canon-ledger.md
  glossary.md
  characters.md
  locations.md
  timeline.md
  scene-ledger.md
  plot-thread-ledger.md
  foreshadowing-payoff-ledger.md
  world-rules.md
  relationship-map.md
  style-guide.md
  continuity-issues.md
  revision-queue.md
)

expected_skills=(
  book-project-architect
  book-research-designer
  book-structure-designer
  book-drafting-editor
  fiction-book-writing
  fiction-story-bible-manager
  narrative-nonfiction-writing
  practical-nonfiction-writing
  scholarly-technical-writing
  visual-hybrid-book-writing
  high-stakes-book-review
)

check_file() {
  test -f "$1" || {
    echo "missing file: $1" >&2
    exit 1
  }
}

check_dir() {
  test -d "$1" || {
    echo "missing directory: $1" >&2
    exit 1
  }
}

for file in "${expected_research[@]}"; do
  check_file "research/$file"
done

for file in "${expected_story[@]}"; do
  check_file "story-bible-template/$file"
done

for skill in "${expected_skills[@]}"; do
  check_dir "skills/$skill"
  check_file "skills/$skill/SKILL.md"
  check_file "skills/$skill/agents/openai.yaml"
  check_dir "skills/$skill/references"
  grep -q "name: $skill" "skills/$skill/SKILL.md"
  grep -q "description:" "skills/$skill/SKILL.md"
  grep -Fq "Use \$$skill" "skills/$skill/agents/openai.yaml"
  uv run --with pyyaml python "$VALIDATOR" "skills/$skill" >/dev/null
done

uv run --with pyyaml python - <<'PY'
from pathlib import Path
import re
import sys
import yaml

errors = []
for skill_dir in sorted(Path("skills").iterdir()):
    if not skill_dir.is_dir():
        continue
    skill = skill_dir.name
    skill_md = skill_dir / "SKILL.md"
    text = skill_md.read_text()
    frontmatter = re.match(r"^---\n(.*?)\n---", text, re.S)
    if not frontmatter:
        errors.append(f"{skill}: missing frontmatter")
        continue
    data = yaml.safe_load(frontmatter.group(1))
    if data.get("name") != skill:
        errors.append(f"{skill}: frontmatter name mismatch")
    if len(data.get("description", "")) > 1024:
        errors.append(f"{skill}: description too long")
    meta_path = skill_dir / "agents" / "openai.yaml"
    meta = yaml.safe_load(meta_path.read_text())
    prompt = meta.get("interface", {}).get("default_prompt", "")
    if f"${skill}" not in prompt:
        errors.append(f"{skill}: default_prompt does not mention ${skill}")
    for ref in sorted(set(re.findall(r"`references/([^`]+)`", text))):
        if not (skill_dir / "references" / ref).exists():
            errors.append(f"{skill}: missing referenced file references/{ref}")

if errors:
    for error in errors:
        print(error, file=sys.stderr)
    sys.exit(1)
PY

for file in "${expected_story[@]}"; do
  check_file "skills/fiction-story-bible-manager/assets/story-bible-template/$file"
done

placeholder_pattern='TO''DO|\[TO''DO|Use ''-|default_prompt: "Use ''-'
if rg -n "$placeholder_pattern" docs research story-bible-template skills >/tmp/writer-collections-verify-rg.txt; then
  cat /tmp/writer-collections-verify-rg.txt >&2
  exit 1
fi

required_outputs=(
  "Book Project Diagnosis"
  "Research Plan"
  "Book Concept Brief"
  "Drafting Plan"
  "Story Premise"
  "Story Bible Index"
  "Narrative Spine"
  "Reader Problem Map"
  "Argument Map"
  "Visual Concept Brief"
  "Risk Register"
)

for output in "${required_outputs[@]}"; do
  rg -q "$output" skills docs
done

echo "writer-collections verification passed"
