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
5. **Technical Notes are source-first.** Select a canonical or institutional
   source spine before drafting. Record the source IDs from `Reference Shelf`
   and the exact sections consulted. Model memory alone is not a source.
6. Use Quartz metadata: `note_type`, `status` (`seed`, `studying`, `developed`,
   `reviewed`, or `reference`), and `source_basis`. Use `last_verified` only for
   evolving software/APIs or current factual claims.
7. Use descriptive kebab-case filenames and web-optimized images. Strip
   unnecessary EXIF/GPS metadata before publishing.
8. Preserve existing URLs. Add redirects to `scripts/migration/routes.json`.
9. Run `bash scripts/build_all.sh` when local Ruby dependencies are available;
   otherwise rely on GitHub Actions and do not claim a local build passed.

## What NOT to do

- Don't fabricate prose to make a section look complete. A clearly labeled
   `seed` roadmap/skeleton with source plan, questions, and TODOs is acceptable;
   it must not pretend technical material has been learned or verified.
- Don't turn a real event into a full narrative in `journey/` unless there's
  genuinely separate personal reflection worth telling — otherwise the event page
  alone is enough.
- Don't add giant/unoptimized images. Don't expose EXIF/GPS data unnecessarily.
