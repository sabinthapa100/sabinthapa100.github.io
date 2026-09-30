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

## Notes Paths

The five top-level Quartz hubs are stable. Their initial paths are:

- **Quantum** — Quantum Mechanics; Quantum Field Theory; Open Quantum Systems; Quantum Computing & Information.
- **High-Energy & Nuclear Physics** — Inside the Nucleus; Particles, Fields & Fundamental Symmetries; Quantum Chromodynamics; Partons & High-Energy Scattering; QCD Matter at Extreme Conditions; Heavy Flavor & Probes; Theorist / Phenomenologist Toolkit.
- **Computing & AI** — Scientific Computing & HPC Foundations; Parallelism & GPU Acceleration; Classical AI, Search & Optimization; Modern Machine Learning; Scientific Machine Learning; Practical AI Systems.
- **General Physics** — Mechanics; Electrodynamics; Statistical Mechanics and Non-Equilibrium; Relativity; Condensed Matter.
- **Reading & Reflections** — source-linked reading records and reflections.

`quartz/content/reference-shelf.md` registers verified source IDs.
`quartz/content/templates/` contains Quartz-ignored authoring templates, not
public pages. Add deeper topics as notes/tags unless a stable learning path
merits a folder index.

## Notes hierarchy

The five top-level Quartz hubs are stable. Their initial paths are:

- **Quantum** — Quantum Mechanics; Quantum Field Theory; Open Quantum Systems; Quantum Computing & Information.
- **High-Energy & Nuclear Physics** — Inside the Nucleus; Particles, Fields & Fundamental Symmetries; Quantum Chromodynamics; Partons & High-Energy Scattering; QCD Matter at Extreme Conditions; Heavy Flavor & Probes; Theorist / Phenomenologist Toolkit.
- **Computing & AI** — Scientific Computing & HPC Foundations; Parallelism & GPU Acceleration; Classical AI, Search & Optimization; Modern Machine Learning; Scientific Machine Learning; Practical AI Systems.
- **General Physics** — Mechanics; Electrodynamics; Statistical Mechanics and Non-Equilibrium; Relativity; Condensed Matter.
- **Reading & Reflections** — source-linked reflections and reading records.

`quartz/content/reference-shelf.md` registers a small set of verified source IDs;
`quartz/content/templates/` contains ignored authoring templates, not public
pages. Add deeper topics as notes/tags unless a stable learning path merits a
folder index.

Public profile prose lives in `_pages/about-profile.md`, the academic record in
`_pages/academic-record.md`, the structured CV in `_data/cv.yml`, and profile
links in `_data/socials.yml`. Preserved Hugo author data is not the active
source for these pages.

## Navigation

The primary navigation is Home, Research, Publications, Talks & Events, Notes,
Journey, About. It is controlled by page metadata in `_pages/`; Projects and
Now remain outside the primary navigation. `/notes/` is the Quartz homepage.

## URL routing

Keep legacy and compatibility paths in `scripts/migration/routes.json`. The
build generates redirects and verifies their sources and internal destinations.
Quartz AliasRedirects emits `.html` aliases, while its Explorer plugin currently
uses root-relative hub links; both cases use explicit static redirects to the
canonical `/notes/` pages.

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
