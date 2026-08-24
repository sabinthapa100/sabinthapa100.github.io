# Architecture Rules

## Content sections and what belongs where

- `content/research/` — `_index.md` is the physics-question-first "What I Work
  On" landing page (QCD matter, relativistic collisions, heavy flavor, cold/hot
  nuclear matter, transport); `quantum-computing/` and `ai-scientific-computing/`
  are a clearly-separate "Explorations" area, not equal-weight research
  directions. Not a place for one-off updates.
- `content/projects/` — concrete research/software/learning projects. Use
  `status: ongoing`, `status: completed`, or `status: exploration` in
  frontmatter. Never create `current/`, `old/`, `past/` lifecycle folders —
  status is metadata, not a path.
- `content/publications/` — one page bundle per formal scholarly output, named
  for the paper, not a template placeholder (`bottomonium-ppb-2024/`, not
  `journal-article/`). Every bundle needs an accurate `cite.bib` (verified
  against INSPIRE/arXiv/DOI, never copied from old CV text) — the theme
  auto-renders a working "Cite" button from it, no other config needed.
- `content/events/` — the ONE canonical collection for talks, conferences,
  workshops, schools, collaboration meetings. One real event = one entry here,
  full stop. Never duplicate an event as a second entry in Journey or elsewhere —
  link to the canonical `events/` entry instead. `show_in_journey: true` lets a
  Journey-worthy event surface there without duplication.
- `content/notes/{physics,quantum,high-energy-nuclear,computing-ai,reading-reflections}/`
  — the long-term notebook, five hubs. `area:` names the hub, `topics: []` can
  span several (a note may reasonably need more than one, e.g.
  `quantum-field-theory` + `high-energy-physics`). No separate `blog/`/`posts/`
  collection, no sub-folder per topic.
- `content/journey/` — personal/scientific chronology and narrative, grouped by
  `era:` (`before-phd` / `phd-years` / `after-phd`, an `eras` taxonomy — see
  `config/_default/hugo.yaml`). If a story relates to an event that already has
  a canonical `events/` entry, link to it rather than re-describing it.
- `content/about/` — a branch bundle: `_index.md` is the coherent public profile
  (bio, education with current/former advisors distinguished, HEFTY link, an
  icon-link row via the `resume-biography` block reading `data/authors/
  me.yaml`), `academic-record/` is the structured Education/Experience/Awards
  page (no skill-level bars — see `FACT-RULES.md`). Not a résumé dump.
- `content/now/` — "what I'm doing right now," meant to be updated monthly, not
  in primary navigation.
- Content that updates `date`/`lastmod` correctly is what makes the homepage's
  "Recent Updates" block (mixing Notes/Journey/Events/Publications/Projects,
  newest first) work without manual homepage edits — see `content-updater`.

## Navigation

Primary nav (`config/_default/menus.yaml`) is five items, two of them
dropdowns, using Hugo's native menu `parent:` mechanism (the theme's navbar
partial already supports one dropdown level, no template work needed for a new
entry — just add it to `menus.yaml`):

```text
Home
Research    → What I Work On / Current Projects / Publications / Talks & Events
Notes       → Notes Home / General Physics / Quantum / High-Energy & Nuclear
               Physics / Computing & AI / Reading & Reflections
Journey     → Journey Home / Before the PhD / PhD Years
About
```

Do not add Bio/Academia/Industry/CV/Resume/Now as primary nav items or a third
dropdown level — Now is linked from Home/About; CV/Resume have no public link at
all (archived in the private vault, see `docs/VAULT-INTERFACE.md`).

The top-level label of a dropdown item (e.g. "Research") is a real link to its
own URL, not just a toggle — this repo overrides the theme's default navbar
partial (`layouts/_partials/components/headers/navbar.html`) minimally to keep
that true; see the comment at the top of that file before changing nav further.

## Moving or retiring a page

If a page's URL changes or a page is retired, add `aliases: [...]` to the page
that now covers that content, and only then remove the old page — never leave a
route silently broken.
