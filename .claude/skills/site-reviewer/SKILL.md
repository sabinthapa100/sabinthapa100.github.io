---
name: site-reviewer
description: Use for a final pre-publication review of this site before merging a PR — checks the build, navigation, metadata, factual claims, privacy, and media hygiene. Use for tasks like "review this before I merge" or "final check before publishing."
---

# Site Reviewer

Perform a final pre-publication review and **report problems separately from
fixing them**, unless explicitly asked to fix them too.

## Checklist

- **Build**: `hugo --minify` succeeds with no errors.
- **Navigation**: primary menu matches `.agent/ARCHITECTURE.md` (Home /
  Research / Notes / Journey / About, with Research and Notes as dropdowns),
  correct order, dropdown children correct, no broken links, and each
  dropdown's top-level label stays independently clickable (not toggle-only).
- **Duplicate content**: no event/publication/project represented as two
  canonical entries in different sections.
- **Metadata consistency**: required frontmatter present (title, date, and the
  section-specific fields used elsewhere in that section); no leftover
  placeholder values.
- **Factual claims**: anything that reads as a claim (achievement, expertise,
  role, result) is traceable to `data/authors/me.yaml`, an existing page, or an
  explicit source — flag anything that isn't, per `.agent/FACT-RULES.md`.
- **Privacy**: no accidentally-committed private-vault drafts, no personal files
  that don't belong in a public repo (check untracked files too, not just staged
  ones), no unnecessary EXIF/GPS in images.
- **Media**: no giant/unoptimized images, descriptive filenames, no residual
  `IMG_####`/`Screenshot ...`-style names.
- **Outdated status**: no project/page whose `status:` no longer matches reality
  as far as you can tell from repo content.
- **Résumé duplication**: no page reproducing the full CV verbatim outside of the
  actual CV PDF download.
- **Accessibility / mobile basics**: images have alt text where the theme
  supports it, no obviously broken responsive layout.
- **AI-style filler prose**: flag generic, padded, or overly promotional
  language that doesn't match the site's plain, personal tone.

## Output

List findings grouped by severity (build-breaking vs. cosmetic vs. advisory).
Don't silently fix anything found during a review-only request.
