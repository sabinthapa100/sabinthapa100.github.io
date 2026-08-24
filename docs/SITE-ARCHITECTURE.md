# Site Architecture

Hugo + [HugoBlox](https://hugoblox.com) static site, deployed to GitHub Pages.

## Content model

| Section | Path | Purpose |
|---|---|---|
| Home | `content/_index.md` | Concise gateway: intro, selected publications, selected events. |
| Research | `content/research/` | Broad, ongoing intellectual directions — not one-off updates. |
| Projects | `content/projects/` | Concrete research/software/learning projects. Discoverable through Research, not in primary nav. `status: active`/`status: completed` in frontmatter — never a lifecycle folder. |
| Publications | `content/publications/` | One page bundle per formal scholarly output. |
| Talks & Events | `content/events/` | The one canonical collection for talks, conferences, workshops, schools, collaboration meetings. One real event = one entry. |
| Notes | `content/notes/{physics,quantum,ai,computing}/` | Long-term notebook: derivations, reading notes, tutorials, reflections. |
| Journey | `content/journey/` | Personal/scientific chronology. Links to canonical `events/` entries rather than duplicating them. |
| About | `content/about/` | Coherent public profile — not a résumé dump. Carries `aliases` for the retired `/academia/` and `/industry/` URLs. |
| Now | `content/now/` | "What I'm doing right now," meant to be updated monthly. Not in primary nav. |

Author/profile data lives in `data/authors/me.yaml` — the single source of truth
for bio, education, links, and experience, consumed by several pages (About,
homepage bio block).

## Configuration

- `config/_default/menus.yaml` — primary navigation.
- `config/_default/params.yaml` / `hugoblox.yaml` — site identity, theme, header/
  footer, SEO.
- `config/_default/hugo.yaml` — core Hugo build settings.
- `config/_default/module.yaml` — HugoBlox module imports (theme kit).

## Archetypes

`archetypes/{events,publications,projects,notes,journey}/index.md` — starting
frontmatter for each content type, matching the fields actually used elsewhere in
that section. See `docs/CONTENT-GUIDE.md` for how to use them.

## Workflows

- `.github/workflows/build.yml` — CI build on PRs (also called by deploy.yml).
- `.github/workflows/deploy.yml` — builds and deploys to GitHub Pages on push to
  `main`.
- `.github/workflows/upgrade.yml` — **manual only** (`workflow_dispatch`).
  HugoBlox framework upgrades are deliberate maintenance, not an unattended weekly
  job. To upgrade: go to Actions → "Upgrade HugoBlox" → Run workflow, review the
  resulting PR's build preview, then merge deliberately.
- `.github/workflows/import-publications.yml` — **manual only**
  (`workflow_dispatch`). Its automatic trigger imports a `publications.bib` into
  `content/publication/` (singular), which doesn't match this repo's actual
  `content/publications/` (plural) structure and isn't currently used. Fix that
  path mismatch before re-enabling the automatic trigger.

## Local development

```bash
pnpm install
hugo server --disableFastRender   # http://localhost:1313
hugo --minify                     # production build, matches CI
```

## Relationship to the private vault

This repo holds only public, publication-ready content. Raw drafts, sources, and
unpublished facts live in a separate private repo — see `docs/VAULT-INTERFACE.md`.
