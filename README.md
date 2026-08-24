# Sabin Thapa Website

Source for [sabinthapa100.github.io](https://sabinthapa100.github.io) — a
long-lived personal scientific website: research, publications, talks & events,
notes, journey, and about. Built with Hugo + [HugoBlox](https://hugoblox.com).

## Structure

```text
content/
├── research/       Broad research directions
├── projects/        Concrete research/software projects
├── publications/    Formal scholarly outputs
├── events/          Talks, conferences, workshops, schools (nav: "Talks & Events")
├── notes/           Long-term notebook (physics, quantum, ai, computing)
├── journey/         Personal/scientific chronology
├── about/           Coherent public profile
└── now/             What I'm doing right now
```

Full architecture: [docs/SITE-ARCHITECTURE.md](docs/SITE-ARCHITECTURE.md).
How to add/update content: [docs/CONTENT-GUIDE.md](docs/CONTENT-GUIDE.md).

## Local development

Prerequisites: Hugo extended, Node.js + pnpm.

```bash
pnpm install
hugo server --disableFastRender   # http://localhost:1313
hugo --minify                     # production build, matches CI
```

## AI agent workflow

This repo is set up for ongoing maintenance by AI coding agents (Claude Code and
others) from a desktop or a phone:

- [`CLAUDE.md`](CLAUDE.md) / [`AGENTS.md`](AGENTS.md) — entry-point rules.
- [`.agent/`](.agent/) — concise, agent-facing operational rules (architecture,
  content, factual-integrity, design, git workflow).
- [`.claude/skills/`](.claude/skills/) — four workflows: `site-maintainer`
  (structural changes), `content-updater` (add/update one item), `story-editor`
  (private draft → public prose), `site-reviewer` (pre-publish check).
- [`docs/MOBILE-WORKFLOW.md`](docs/MOBILE-WORKFLOW.md) — recommended pattern for
  making changes away from a desktop.

The hard rule underneath all of it: no biographical or scientific fact is ever
invented. See [`.agent/FACT-RULES.md`](.agent/FACT-RULES.md).

## Deployment

- CI build on pull requests: [`.github/workflows/build.yml`](.github/workflows/build.yml)
- Auto deploy on push to `main`: [`.github/workflows/deploy.yml`](.github/workflows/deploy.yml)
- HugoBlox framework upgrades: manual only
  ([`.github/workflows/upgrade.yml`](.github/workflows/upgrade.yml),
  `workflow_dispatch`) — see `docs/SITE-ARCHITECTURE.md` for the procedure.
- Publication import from BibTeX: manual only
  ([`.github/workflows/import-publications.yml`](.github/workflows/import-publications.yml)),
  currently has a path mismatch with the real `content/publications/` structure —
  see the workflow file's comments before re-enabling automatic triggering.

## Git workflow

Feature branch → PR → CI → review → merge. Never push directly to `main`. See
[`.agent/GIT-WORKFLOW.md`](.agent/GIT-WORKFLOW.md).

## Private vault

Raw drafts and unpublished source material live in a separate private
repository, not here — see [`docs/VAULT-INTERFACE.md`](docs/VAULT-INTERFACE.md).
