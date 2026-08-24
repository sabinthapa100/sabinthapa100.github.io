# AGENTS.md

Vendor-neutral instructions for any coding agent (Claude, Codex, Copilot, etc.)
working in this repository. If you can read `CLAUDE.md`, read that too — it
carries the same rules for Claude Code specifically.

## What this is

Sabin Thapa's personal scientific website — Hugo + HugoBlox static site, deployed
to GitHub Pages. A long-lived research/personal archive, not a résumé template.

## Where to look

- `.agent/` — concise, agent-facing operational rules. Start with
  `.agent/README.md`, then `ARCHITECTURE.md`, `CONTENT-RULES.md`,
  `FACT-RULES.md`, `DESIGN-RULES.md`, `GIT-WORKFLOW.md`.
- `docs/` — the human-readable version of the same policies, plus setup/build
  instructions.

## Non-negotiable safety rules

1. **Never push directly to `main`.** Work on a feature branch, open a PR.
2. **Never invent biographical or scientific facts.** Dates, venues, roles,
   results, affiliations, awards, expertise level — if it isn't already stated in
   the repo's content/data files, write `TODO: verify ...` instead of guessing.
3. **Never publish raw private-vault drafts** or commit anything from an
   untracked personal/`vault`/`drafts` folder into this public repo.
4. **Never run destructive git operations** (`reset --hard`, `push --force`,
   history rewrites) without explicit user instruction.
5. Preserve existing URLs when moving content — use Hugo `aliases`.

Full detail lives in `.agent/` — read it before making structural or content
changes.
