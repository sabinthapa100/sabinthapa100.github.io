# Site Architecture

Hugo + [HugoBlox](https://hugoblox.com) static site, deployed to GitHub Pages.

## Content model

| Section | Path | Purpose |
|---|---|---|
| Home | `content/_index.md` | Concise gateway: intro, research-direction highlights, a "Recent Updates" collection mixing Notes/Journey/Events/Publications/Projects. |
| Research | `content/research/` | `_index.md`: physics-question-first "What I Work On" landing page. `quantum-computing/`, `ai-scientific-computing/`: a separate, clearly-labeled Explorations area. Not one-off updates. |
| Projects | `content/projects/` | Concrete research/software/learning projects. Discoverable through Research, not in primary nav. `status: ongoing`/`completed`/`exploration` in frontmatter — never a lifecycle folder. |
| Publications | `content/publications/` | One page bundle per formal scholarly output, named for the paper. Accurate `cite.bib` per bundle powers the theme's built-in "Cite" button. |
| Talks & Events | `content/events/` | The one canonical collection for talks, conferences, workshops, schools, collaboration meetings. One real event = one entry. `show_in_journey: true` lets it also surface on Journey without duplication. |
| Notes | `content/notes/{physics,quantum,high-energy-nuclear,computing-ai,reading-reflections}/` | Long-term notebook, five hubs. `area:`/`topics: []` frontmatter, not sub-folders per topic. |
| Journey | `content/journey/` | Personal/scientific chronology, grouped by `era:` (an `eras` taxonomy: before-phd/phd-years/after-phd). Links to canonical `events/` entries rather than duplicating them. |
| About | `content/about/` | A branch bundle: `_index.md` (profile, current/former advisors, icon-link row) plus `academic-record/` (Education/Experience/Awards, no skill bars). Carries `aliases` for the retired `/academia/`, `/industry/`, and `/experience/` URLs. |
| Now | `content/now/` | "What I'm doing right now," meant to be updated monthly. Not in primary nav. |

Author/profile data lives in `data/authors/me.yaml` — the single source of truth
for bio, education, links, and experience, consumed by several pages (About,
homepage bio block). Its `bio:` field **is** the homepage/About introduction —
the biography blocks' `text: ''` override doesn't suppress it, it falls back to
it, so don't hand-write a second competing intro paragraph alongside one of
these blocks.

## Navigation

`config/_default/menus.yaml` is five top-level entries, two of them dropdowns
(Research, Notes) using Hugo's native menu `parent:` field — the theme's
`headers/navbar.html` already walks `.Children` for one dropdown level, so a
new dropdown entry is a `menus.yaml`-only change. This repo overrides that
partial (`layouts/_partials/components/headers/navbar.html`) with one
deliberate change: the vendored version renders a dropdown's top-level label
as a toggle-only `<span>`; the override splits it into a real `<a href>` (so
"Research" is independently clickable) plus a small separate toggle for the
chevron, keeping the same CSS/JS the theme ships.

## Math and video

KaTeX is on site-wide (`hugoblox.content.math.enable: true` in `params.yaml`);
write `$...$`/`$$...$$`/`\(...\)`/`\[...\]` directly in Markdown, no per-page
setup. Hugo's built-in `{{< youtube ID >}}` shortcode works as-is, with
privacy-enhanced embeds on by default (`privacy.youtube.privacyEnhanced: true`
in `hugo.yaml`). See `docs/CONTENT-GUIDE.md`.

## Configuration

- `config/_default/menus.yaml` — primary navigation.
- `config/_default/params.yaml` / `hugoblox.yaml` — site identity, theme, header/
  footer, SEO, math.
- `config/_default/hugo.yaml` — core Hugo build settings, taxonomies (including
  `era`), the `content_meta.content_type` cascade that labels each item's type
  on the homepage's mixed card view, privacy/YouTube.
- `config/_default/module.yaml` — HugoBlox module imports (theme kit).
- `assets/css/custom.css` — auto-loaded by the theme when present; currently
  a handful of per-topic accent colors on the Notes/Journey dropdown links.

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
