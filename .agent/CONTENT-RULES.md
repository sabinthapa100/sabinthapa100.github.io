# Content Rules

## Adding or updating one item

1. Identify the correct content type (event / publication / project / note /
   journey) — see `ARCHITECTURE.md`.
2. Copy the matching file from `archetypes/` rather than starting blank.
3. Check `content/<section>/` first for an existing entry covering the same
   real-world thing (same conference, same paper, same project). Never create a
   second canonical entry for something that already has one.
4. Fill in only what you actually know. See `FACT-RULES.md` for what to do with
   the rest.
5. Use descriptive, kebab-case filenames for media (`kent-physics-building-2019.webp`,
   not `IMG_3281.jpg`). A page bundle's primary image is conventionally named
   `featured.<ext>`.
6. After editing, run `hugo --minify` locally (or `hugo server`) and confirm the
   page builds and appears where expected.

## What NOT to do

- Don't fabricate content to fill an empty section — an empty Notes or Journey
  section should simply show nothing yet, not a placeholder entry.
- Don't turn a real event into a full narrative in `journey/` unless there's
  genuinely separate personal reflection worth telling — otherwise the event page
  alone is enough.
- Don't add giant/unoptimized images. Don't expose EXIF/GPS data unnecessarily.
