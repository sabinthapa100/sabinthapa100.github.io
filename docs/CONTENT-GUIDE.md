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
5. Keep `date` and `lastmod` in sync on every touch — the homepage's Recent
   Updates block sorts by `date`, so an update that doesn't bump it won't
   surface there.
6. Preview locally (`hugo server`) and confirm it appears where expected.

## Notes taxonomy

`content/notes/` has five hubs: General Physics (`physics/`), Quantum
(`quantum/`), High-Energy & Nuclear Physics (`high-energy-nuclear/`),
Computing & AI (`computing-ai/`), and Reading & Reflections
(`reading-reflections/`). A note's `area:` frontmatter names its hub;
`topics: []` can list several finer-grained tags (a note can reasonably
carry more than one, e.g. `high-energy-physics` and
`quantum-field-theory` on the same pNRQCD note) — topics are metadata, not
new folders. Don't create a sub-folder per topic.

## Math

KaTeX is on site-wide (`hugoblox.content.math.enable: true` in
`config/_default/params.yaml`) — write LaTeX directly in Markdown, no setup
needed: inline `$E=mc^2$` or `\(E=mc^2\)`, display `$$...$$` or `\[...\]`,
and `\begin{aligned}...\end{aligned}` inside a display block. A page can
still opt out with `math: false` frontmatter if it never needs it.

## Video

Hugo's built-in shortcode handles YouTube embeds, responsive and
autoplay-off by default: `{{</* youtube dQw4w9WgXcQ */>}}`. Privacy-enhanced
mode (youtube-nocookie.com) is on site-wide via `privacy.youtube.
privacyEnhanced: true` in `config/_default/hugo.yaml`. Embed the video
inside the Note/Journey page that actually discusses it — there's no
separate Video section.

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
