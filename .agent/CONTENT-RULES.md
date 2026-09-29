# Content Rules

## Adding or updating one item

1. Identify the correct content type (event / publication / project / note /
   journey) — see `ARCHITECTURE.md`.
2. Use the active source: `_events/`, `_projects/`, `_journey/`,
   `_bibliography/papers.bib`, or `quartz/content/` for Notes. Page-level
   material belongs in `_pages/`.
3. Check that source for an existing canonical entry first. One real event has
   one `_events/` record; publications live in the single BibTeX file.
4. Fill in only what you actually know. See `FACT-RULES.md` for what to do with
   the rest.
5. Use descriptive kebab-case filenames and web-optimized images. Strip
   unnecessary EXIF/GPS metadata before publishing.
6. Preserve existing URLs. Add redirects to `scripts/migration/routes.json`.
7. Run `bash scripts/build_all.sh` when local Ruby dependencies are available;
   otherwise rely on GitHub Actions and do not claim a local build passed.

## What NOT to do

- Don't fabricate content to fill an empty section — don't create placeholder
   Notes or Journey entries.
- Don't turn a real event into a full narrative in `journey/` unless there's
  genuinely separate personal reflection worth telling — otherwise the event page
  alone is enough.
- Don't add giant/unoptimized images. Don't expose EXIF/GPS data unnecessarily.
