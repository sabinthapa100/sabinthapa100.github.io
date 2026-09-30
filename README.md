# Sabin Thapa Website

Source for [sabinthapa100.github.io](https://sabinthapa100.github.io) — a
long-lived personal scientific website: research, publications, talks & events,
notes, journey, and about. Built with al-folio/Jekyll, with Quartz 5 under
`/notes/`.

## Structure

```text
_pages/               Main pages and stable routes
_events/              Canonical talks, conferences, schools, and symposia
_projects/            Research and software projects
_journey/             Verified public chronology
_bibliography/         Single BibTeX source for publications
_data/cv.yml           Structured RenderCV CV at /cv/
quartz/content/         Public Notes garden (five hubs)
scripts/migration/      Route map, converters, redirect and route checks
scripts/build_all.sh    Composed Jekyll + Quartz build
```

The primary navigation is Home / Research / Publications / Talks & Events /
Notes / Journey / About. Both generators feed one `_site/` Pages artifact;
Hugo-era source directories are preserved during migration validation but are
not active content locations.

Full architecture: [docs/SITE-ARCHITECTURE.md](docs/SITE-ARCHITECTURE.md).
How to add/update content: [docs/CONTENT-GUIDE.md](docs/CONTENT-GUIDE.md).

## Local development

Prerequisites: Ruby 3.2.3, Node.js 22, npm 10.9.2 or later.

```bash
bundle install
npm ci --prefix quartz
bash scripts/build_all.sh
```

## AI agent workflow

This repo is set up for ongoing maintenance by AI coding agents (Claude Code and
others) from a desktop or a phone:

- [`CLAUDE.md`](CLAUDE.md) / [`AGENTS.md`](AGENTS.md) — entry-point rules.
- [`.agent/`](.agent/) — concise, agent-facing operational rules (architecture,
  content, factual-integrity, design, git workflow).
- [`.claude/skills/`](.claude/skills/) — five workflows: `site-maintainer`
  (structural changes), `content-updater` (add/update one item), `story-editor`
  (private draft → public prose), `site-reviewer` (pre-publish check),
  `remote-site-workflow` (branch/PR discipline from any workstation).
- [`docs/MOBILE-WORKFLOW.md`](docs/MOBILE-WORKFLOW.md) — recommended pattern for
  making changes away from a desktop.

The hard rule underneath all of it: no biographical or scientific fact is ever
invented. See [`.agent/FACT-RULES.md`](.agent/FACT-RULES.md).

## Deployment

- CI build on pull requests: [`.github/workflows/build.yml`](.github/workflows/build.yml)
- Auto deploy on push to `main`: [`.github/workflows/deploy.yml`](.github/workflows/deploy.yml)
- Build uses Ruby 3.2 and Node 22, composes Jekyll and Quartz into `_site/`,
  checks migrated routes, and uploads one artifact. Pull requests build only;
  pushes to `main` deploy to Pages.

## Git workflow

Feature branch → PR → CI → review → merge. Never push directly to `main`. See
[`.agent/GIT-WORKFLOW.md`](.agent/GIT-WORKFLOW.md).

## Private vault

Raw drafts and unpublished source material live in a separate private
repository, not here — see [`docs/VAULT-INTERFACE.md`](docs/VAULT-INTERFACE.md).
