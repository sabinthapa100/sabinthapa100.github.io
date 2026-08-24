# .agent/

Concise, agent-facing operational rules for this repository. These translate the
human-readable policies in `docs/` into instructions an agent should follow
directly. Read the file relevant to your task before editing:

- `ARCHITECTURE.md` — content model, where things live, how sections relate.
- `CONTENT-RULES.md` — how to add/update a content item without breaking
  conventions or duplicating a canonical entry.
- `FACT-RULES.md` — factual-integrity rules (FACT / INFERENCE / DRAFT / UNKNOWN).
- `DESIGN-RULES.md` — what NOT to do visually in this milestone; pointer to the
  full design guide.
- `GIT-WORKFLOW.md` — branch/commit/PR rules specific to this repo.

If a task doesn't clearly map to one of the five skills in `.claude/skills/`
(`site-maintainer`, `content-updater`, `story-editor`, `site-reviewer`,
`remote-site-workflow`), read `CLAUDE.md` (or `AGENTS.md`) at the repo root
first — it has the non-negotiable rules that apply regardless of task.
