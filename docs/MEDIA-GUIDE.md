# Media Guide

## What goes in this repo

Only selected, web-optimized media that's actually used on a page. Do not commit
an original photo library — see `docs/VAULT-INTERFACE.md` for where originals
live.

## Naming

Descriptive, kebab-case filenames: `kent-physics-building-2019.webp`,
`ggi-florence-talk-2024.webp` — never `IMG_3281.jpg`, `final2.jpg`, `newnew.jpg`.

Use images under `assets/img/` and refer to them explicitly from Jekyll or Quartz
content. Event listing cards use the `image` field in `_events/` frontmatter;
provide a descriptive alt value or use the event title as the fallback.

## Optimization and privacy

- Optimize images for web use before committing (reasonable dimensions/
  compression) — don't commit huge originals.
- Strip unnecessary EXIF/GPS metadata before committing personal photographs.
- Don't use generic stock imagery (glowing brains, random atoms) where a real
  photograph or real scientific figure would do.

## Author/profile images

`assets/img/profile/` holds the al-folio profile image. The original Hugo author
media remains under `assets/media/authors/` as preserved migration source; do
not treat it as the active profile path.
