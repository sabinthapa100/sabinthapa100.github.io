# Design Guide

The site now combines al-folio for the main academic site and Quartz for the
Notes garden. Preserve each system's established visual conventions while
keeping the shared burgundy identity coherent.

## Visual identity

Modern, scientific, personal, warm; colorful but restrained; visually interesting
without looking like a startup template; readable, responsive, strong typography,
good use of whitespace. Real photographs and real scientific figures over stock
imagery; subtle topic accents rather than heavy theming.

## Avoid

- Excessive gradients, glowing AI-brain/generic-atom stock imagery
- Animations without purpose
- Dozens of colors, visual clutter
- Huge résumé blocks, excessive badges
- Skill progress bars pretending to quantify expertise
- Corporate jargon

## Where appearance actually lives

Main-site appearance belongs to al-folio and its local Sass; Notes appearance
belongs to Quartz. Do not invent a parallel theme or `appearance/` directory:

- `_pages/` and `_config.yml` — main-page structure and navigation
- `assets/css/main.scss` and `_sass/_migration.scss` — al-folio styles and
  restrained site-specific overrides
- `quartz/quartz.config.yaml` and Quartz components — Notes theme and plugins
- `assets/img/` — shared optimized media

## Tone

Personal and direct, not corporate. A scientist's intellectual and life archive,
not a résumé template or a landing page. See `.agent/DESIGN-RULES.md` for the
agent-facing summary of these constraints, and `docs/CONTENT-GUIDE.md` for how
tone applies to written content specifically.
