# CLAUDE.md

This repo is Sabin Thapa's personal scientific website: Hugo + HugoBlox, deployed
to GitHub Pages at sabinthapa100.github.io. It is a long-lived research/personal
archive (research, publications, talks & events, notes, journey, about) — not a
résumé template and not a startup landing page.

## Architecture

- `content/` — page bundles. Sections: `research/`, `publications/`, `events/`
  (nav label "Talks & Events"), `notes/`, `journey/`, `about/`, `now/`, `projects/`.
  One real event = one entry in `content/events/`; never duplicate it elsewhere.
- `data/authors/me.yaml` — the single source of truth for bio/education/links.
- `config/_default/` — `menus.yaml` (nav), `params.yaml` / `hugoblox.yaml`
  (site identity/theme).
- `archetypes/` — starting frontmatter for `event`, `publication`, `project`,
  `note`, `journey`. Use these when adding content.
- Full details: `docs/SITE-ARCHITECTURE.md`, `docs/CONTENT-GUIDE.md`.

## Build / dev

```bash
pnpm install
hugo server --disableFastRender   # dev
hugo --minify                     # production build (matches CI)
```

## Git workflow

Feature branch → PR → review → merge. **Never push directly to `main`.** Never
force-push. Never merge your own PR without the user's go-ahead. Conventional
Commits (`feat:`, `fix:`, `docs:`, `refactor:`, `chore:`). Full rules:
`.agent/GIT-WORKFLOW.md`.

## Hard factual-integrity rules (non-negotiable)

This is a real person's biography and scientific record. Distinguish FACT /
INFERENCE / DRAFT / UNKNOWN and never silently convert one into another:

- Never invent biographical or scientific facts — dates, venues, roles, results,
  affiliations, awards, motivations.
- Never upgrade "learning" or "exploring" into "expertise," and never call a
  project "active" just because its page exists.
- If a fact is missing, write `TODO: verify ...` — do not guess.
- Full rules: `.agent/FACT-RULES.md`.

## Privacy

Raw material lives in a **separate private vault repo** (`sabinsite-vault`, on
the home server — see `docs/VAULT-INTERFACE.md`), not here. Never publish
unedited private drafts, never commit anything from a local `vault/`,
`drafts/`, or similar untracked personal folder. Public publishing always
requires explicit intent ("publish this," "put this on my website") — see
`docs/MOBILE-WORKFLOW.md`.

## Using `.agent/` and `.claude/skills/`

`.agent/` holds concise, agent-facing operational rules (start with
`.agent/README.md`). `docs/` is the human-readable version of the same policies.
`.claude/skills/` holds: `site-maintainer` (structural changes), `content-updater`
(add/update one content item), `story-editor` (draft → public Journey/Notes page),
`site-reviewer` (pre-publish check), `remote-site-workflow` (branch/PR discipline
from any workstation). Prefer the matching skill over ad hoc edits.
