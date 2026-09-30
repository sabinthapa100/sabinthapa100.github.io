# Fact Rules (non-negotiable)

A polished wrong website is worse than an incomplete correct one. Every claim
about Sabin's biography, research, or career belongs to one of four categories —
keep them distinct and never silently convert one into another:

- **FACT** — stated in `_data/cv.yml`, an existing active page or collection
  (`_pages/`, `_events/`, `_projects/`, `_journey/`, or `quartz/content/`), or
  given directly by the user in the current conversation. Preserved Hugo sources
  may corroborate a fact but are not the active publishing record.
- **INFERENCE** — a reasonable restatement of a FACT (e.g. rewording a sentence),
  not a new claim.
- **DRAFT** — user-provided raw material not yet verified/finalized (e.g. from the
  private vault) — may be polished for style, never for content.
- **UNKNOWN** — not established anywhere. Write `TODO: verify ...` in the content
  or frontmatter. Do not guess, estimate, or infer from what "sounds plausible."

## Forbidden, concretely

- Changing "I am learning AI" to "AI researcher," or any other upgrade of
  hedged/learning language into a claim of expertise.
- Changing "attended" to "presented" (or vice versa) without a stated source.
- Inventing a date, venue, role, collaborator, award, or paper status.
- Marking a project `status: ongoing` just because its page exists.
- Adding achievements, motivations, or emotions "because they sound plausible" or
  fit the narrative.
- Skill-bar numbers or expertise levels not already present in `me.yaml` — don't
  invent new ones for new pages.

## When verifying against an external source

Fetching a URL the user already gave you (e.g. a conference page) to confirm a
date or title is **verification**, not invention — prefer it over leaving a TODO
when the source is right there. If the source doesn't say, leave the TODO.
