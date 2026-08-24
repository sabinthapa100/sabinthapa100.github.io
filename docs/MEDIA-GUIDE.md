# Media Guide

## What goes in this repo

Only selected, web-optimized media that's actually used on a page. Do not commit
an original photo library — see `docs/VAULT-INTERFACE.md` for where originals
live.

## Naming

Descriptive, kebab-case filenames: `kent-physics-building-2019.webp`,
`ggi-florence-talk-2024.webp` — never `IMG_3281.jpg`, `final2.jpg`, `newnew.jpg`.

A page bundle's primary/representative image is conventionally named
`featured.<ext>` (this is auto-picked-up as the card image by HugoBlox
templates). Additional images can go in a `gallery/` or `figures/` subfolder
within the same page bundle.

## Optimization and privacy

- Optimize images for web use before committing (reasonable dimensions/
  compression) — don't commit huge originals.
- Strip unnecessary EXIF/GPS metadata before committing personal photographs.
- Don't use generic stock imagery (glowing brains, random atoms) where a real
  photograph or real scientific figure would do.

## Author/profile images

`assets/media/authors/` holds the profile photos referenced by
`data/authors/me.yaml`. Don't add unrelated images there.
