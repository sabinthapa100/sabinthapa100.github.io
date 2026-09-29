# Site Architecture

The active site is al-folio v1.2 on Jekyll, with Quartz v5.0.0 as the digital
garden under `/notes/`. GitHub Actions composes both generators into one Pages
artifact. Hugo-era source files are preserved during migration validation but
are not active publishing locations.

## Content model

| Section | Path | Purpose |
| --- | --- | --- |
| Home and profile | `_pages/about.md`, `_pages/about-profile.md` | Home gateway and public profile. Profile, CV, and socials are structured separately. |
| Research | `_pages/research.md` and research subpages | Physics-first quarkonium research; quantum computing and AI for science remain explorations. |
| Projects | `_projects/` | Concrete work with verified status metadata; linked from Research, not primary nav. |
| Publications | `_bibliography/papers.bib` | One verified BibTeX source rendered by al-folio; preprints are clearly distinguished from published work. |
| Talks & Events | `_events/` | One canonical record per talk, conference, workshop, school, or symposium, with event type and role. |
| Notes | `quartz/content/` | Quartz garden with five hubs: physics, quantum, high-energy-nuclear, computing-ai, and reading-reflections. |
| Journey | `_journey/` | Verified personal/scientific chronology; link to canonical event pages instead of duplicating facts. |
| About and CV | `_pages/about-profile.md`, `_pages/academic-record.md`, `_data/cv.yml` | Profile, structured academic record, and RenderCV-backed `/cv/`. No private reference details. |
| Now | `_pages/now.md` | Current, dated update; not in primary navigation. |

the biography blocks' `text: ''` override doesn't suppress it, it falls back to
Public profile prose lives in `_pages/about-profile.md`, the academic record in
`_pages/academic-record.md`, the structured CV in `_data/cv.yml`, and profile
links in `_data/socials.yml`. Preserved Hugo author data is not the active
source for these pages.

## Navigation

The primary navigation is Home, Research, Publications, Talks & Events, Notes,
Journey, About. It is controlled by page metadata in `_pages/`; Projects and
Now remain outside the primary navigation. `/notes/` is the Quartz homepage.

## Math and video

al-folio and Quartz both support mathematical content; use standard Markdown
math delimiters and verify the rendered page in the relevant generator. Do not
use Hugo shortcodes in Jekyll or Quartz content. See `docs/CONTENT-GUIDE.md`.

## Configuration

- `_config.yml` — Jekyll collections, plugins, page defaults, and site settings.
- `_pages/` — explicit page routes and primary navigation metadata.
- `_data/cv.yml`, `_data/socials.yml` — structured CV and profile links.
- `_bibliography/papers.bib` — the complete publication source.
- `quartz/quartz.config.yaml` — Quartz base URL, visual theme, and plugins.
- `assets/css/main.scss`, `_sass/_migration.scss` — al-folio stylesheet and
  site-specific theme adjustments.

## Archetypes

Follow nearby Jekyll collection entries and Quartz note frontmatter. The old
Hugo archetypes remain migration sources, not active content templates.

## Workflows

`build.yml` installs Ruby 3.2 and Node 22, runs `scripts/build_all.sh`, checks
routes, and uploads one artifact. `deploy.yml` calls that reusable build and
deploys only on push to `main`. Hugo-only upgrade, feed, and publication-import
workflows have been retired; `_bibliography/papers.bib` is edited directly.

## Local development

```bash
bundle install
npm ci --prefix quartz
bash scripts/build_all.sh         # composed output in _site/
```

Prerequisites are Ruby 3.2.3 and Node 22 (npm 10.9.2 or later). Quartz can be
previewed independently from `quartz/`; local Jekyll builds require the native
Ruby development headers needed by the locked gems. GitHub Actions is the
authoritative validation path when those headers are unavailable locally.

## Relationship to the private vault

This repo holds only public, publication-ready content. Raw drafts, sources, and
unpublished facts live in a separate private repo — see `docs/VAULT-INTERFACE.md`.
