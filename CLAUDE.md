# CLAUDE.md

This repo is Sabin Thapa's personal scientific website, deployed to GitHub Pages
at sabinthapa100.github.io. The main site uses al-folio/Jekyll; Quartz 5 builds
the digital garden at `/notes/`. GitHub Actions composes one artifact. This is a
long-lived research/personal archive, not a résumé template or startup landing page.

## Architecture

- `_pages/` — stable main-site pages and primary navigation.
- `_events/`, `_projects/`, `_journey/` — canonical Jekyll collections.
- `_bibliography/papers.bib` — single publication metadata source;
  `_data/cv.yml` is the structured RenderCV source at `/cv/`.
- `_data/socials.yml` — al-folio profile links.
- `quartz/content/` — the five public Notes hubs. Do not place private drafts here.
- `scripts/migration/routes.json` — old-to-new route mappings and redirect
  owners; Hugo-era files are preserved migration sources, not active content.
- Full details: `docs/SITE-ARCHITECTURE.md`, `docs/CONTENT-GUIDE.md`.
- Full details: `docs/SITE-ARCHITECTURE.md`, `docs/CONTENT-GUIDE.md`.

## Build / dev

```bash
bundle install
npm ci --prefix quartz
bash scripts/build_all.sh
```

Prerequisites: Ruby 3.2.3 and Node 22/npm 10.9.2 or later. If local Ruby
development headers prevent Jekyll installation, GitHub Actions is the
authoritative build and route-validation environment.

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
