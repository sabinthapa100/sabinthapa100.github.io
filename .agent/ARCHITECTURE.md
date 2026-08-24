# Architecture Rules

## Content sections and what belongs where

- `content/research/` — broad, ongoing intellectual directions (currently: QCD /
  Quarkonium / High-Energy Nuclear Physics, Quantum Computing / Quantum
  Simulation, AI / Scientific Computing). Not a place for one-off updates.
- `content/projects/` — concrete research/software/learning projects. Use
  `status: active` or `status: completed` in frontmatter. Never create
  `current/`, `old/`, `past/` lifecycle folders — status is metadata, not a path.
- `content/publications/` — one page bundle per formal scholarly output.
- `content/events/` — the ONE canonical collection for talks, conferences,
  workshops, schools, collaboration meetings. One real event = one entry here,
  full stop. Never duplicate an event as a second entry in Journey or elsewhere —
  link to the canonical `events/` entry instead.
- `content/notes/{physics,quantum,ai,computing}/` — the long-term notebook.
  No separate `blog/`/`posts/` collection.
- `content/journey/` — personal/scientific chronology and narrative. If a story
  relates to an event that already has a canonical `events/` entry, link to it
  rather than re-describing it.
- `content/about/` — the coherent public profile (bio, education, research
  identity, links, secondary CV/resume download). Not a full résumé dump.
- `content/now/` — "what I'm doing right now," meant to be updated monthly, not
  in primary navigation.

## Navigation

Primary nav (`config/_default/menus.yaml`) is exactly: Home · Research ·
Publications · Talks & Events · Notes · Journey · About, in that order. Do not add
Bio/Academia/Industry/CV/Resume/Projects/Now as primary nav items — Projects is
discoverable through Research; Now is linked from Home/About; CV/Resume are a
secondary link under About.

## Moving or retiring a page

If a page's URL changes or a page is retired, add `aliases: [...]` to the page
that now covers that content, and only then remove the old page — never leave a
route silently broken.
