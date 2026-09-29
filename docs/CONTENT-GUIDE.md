# Content Guide

How to add or update content on this site. For the "why," see
`docs/SITE-ARCHITECTURE.md`; for the agent-facing version of these rules, see
`.agent/CONTENT-RULES.md` and `.agent/FACT-RULES.md`.

## Adding one item

1. Pick the section it belongs to (Research / Projects / Publications / Talks &
   Events / Notes / Journey / About / Now) — see the table in
   `docs/SITE-ARCHITECTURE.md`.
2. Check whether it already exists. A talk/conference/workshop has exactly one
   entry in `_events/`; publications belong in the single
   `_bibliography/papers.bib` file.
3. Follow a sibling entry's schema in `_events/`, `_projects/`, or `_journey/`;
   page-level material belongs in `_pages/`. Notes belong in `quartz/content/`.
4. Fill in the frontmatter with what you actually know. Leave `TODO: verify ...`
   for anything you don't — never guess a date, venue, or outcome.
5. Preserve established routes. Add or update legacy mappings in
   `scripts/migration/routes.json` and verify them in the composed output.
6. Build with `bash scripts/build_all.sh` when local dependencies permit, and
   confirm the item appears in its section. GitHub Actions is authoritative
   when local Ruby headers are unavailable.

## Notes taxonomy

`quartz/content/` has five hubs: General Physics (`physics/`), Quantum
(`quantum/`), High-Energy & Nuclear Physics (`high-energy-nuclear/`),
Computing & AI (`computing-ai/`), and Reading & Reflections
(`reading-reflections/`). Use Quartz/Obsidian-compatible frontmatter and
wikilinks where they help navigation. Publish only notes ready for public
release; raw captures and drafts stay in the private vault.

## Math

Both generators support mathematical content. Write standard LaTeX delimiters
in Markdown and verify rendering in the relevant Jekyll or Quartz build; do not
rely on Hugo-specific configuration or shortcode syntax.

## Video

Use a standard Markdown link or a reviewed HTML embed for video; do not use
Hugo shortcodes. Keep video links on the page that discusses the talk or event.

## Factual integrity

This is a real scientific record, not marketing copy. Learning something is not
the same as being an expert in it; attending a talk is not the same as
presenting one; a page existing is not the same as a project being active. When
in doubt, understate and leave a `TODO`.

## Media

Use descriptive, optimized image paths under `assets/img/` and meaningful alt
text. Strip unnecessary EXIF/GPS metadata. See `docs/MEDIA-GUIDE.md`.

## Retiring or moving a page

Add the old and new routes to `scripts/migration/routes.json`, set the correct
owner (`jekyll`, `quartz`, or `redirect`), and verify the generated route before
retiring the old page. Quartz emits aliases as `.html`; use the static redirect
owner for legacy slash-terminated URLs.
