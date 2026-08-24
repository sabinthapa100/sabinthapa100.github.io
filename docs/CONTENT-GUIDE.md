# Content Guide

How to add or update content on this site. For the "why," see
`docs/SITE-ARCHITECTURE.md`; for the agent-facing version of these rules, see
`.agent/CONTENT-RULES.md` and `.agent/FACT-RULES.md`.

## Adding one item

1. Pick the section it belongs to (Research / Projects / Publications / Talks &
   Events / Notes / Journey / About / Now) — see the table in
   `docs/SITE-ARCHITECTURE.md`.
2. Check whether it already exists. In particular, a talk/conference/workshop
   should have exactly one entry, in `content/events/`.
3. Copy the matching archetype from `archetypes/` into a new page bundle folder
   (kebab-case, e.g. `content/events/some-conference-2027/index.md`).
4. Fill in the frontmatter with what you actually know. Leave `TODO: verify ...`
   for anything you don't — never guess a date, venue, or outcome.
5. Preview locally (`hugo server`) and confirm it appears where expected.

## Factual integrity

This is a real scientific record, not marketing copy. Learning something is not
the same as being an expert in it; attending a talk is not the same as
presenting one; a page existing is not the same as a project being active. When
in doubt, understate and leave a `TODO`.

## Media

Filenames should describe the content (`kent-physics-building-2019.webp`), not
`IMG_3281.jpg`. A page bundle's primary/card image is conventionally named
`featured.<ext>`. See `docs/MEDIA-GUIDE.md` for the full media policy.

## Retiring or moving a page

Add `aliases: ["/old-url/"]` to the page that now covers that content, confirm it
builds, and only then delete the old page.
