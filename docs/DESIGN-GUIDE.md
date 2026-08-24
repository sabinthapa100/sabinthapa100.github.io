# Design Guide

No major visual redesign happened in the foundation-refactor milestone — this
document records the intended direction for future work.

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

Global appearance belongs in the existing Hugo architecture — do not invent a new
`appearance/` directory:

- `content/_index.md` — homepage structure/blocks
- `config/_default/menus.yaml` — navigation
- `config/_default/params.yaml` / `hugoblox.yaml` — theme, colors, typography,
  header/footer
- `assets/css/custom.css` — custom CSS overrides, auto-loaded by the theme
  when present. Currently a handful of per-content-family accent colors
  (Quantum, High-Energy & Nuclear Physics, Computing & AI, Reading &
  Reflections, Journey, General Physics) applied to the Notes/Journey
  dropdown links — restrained, no background recoloring. Add to it rather
  than starting a second stylesheet.
- `assets/media/site/` — site-level imagery: logo, banners (not created yet —
  add it here when actually needed, rather than pre-scaffolding it)

## Tone

Personal and direct, not corporate. A scientist's intellectual and life archive,
not a résumé template or a landing page. See `.agent/DESIGN-RULES.md` for the
agent-facing summary of these constraints, and `docs/CONTENT-GUIDE.md` for how
tone applies to written content specifically.
