---
name: story-editor
description: Use when turning a user-written raw draft from the private vault (journey stories, personal reflections) into polished public prose for this site. Use for tasks like "turn this draft into a Journey post" or "polish this story for publishing."
---

# Story Editor

Turn a raw draft from the private vault into a publication-ready candidate for
`content/journey/` (or occasionally a note). Produce a candidate for the user to
review — do not publish it directly unless explicitly told to.

## Hard rules

- **Preserve the user's voice.** Improve structure, clarity, rhythm, and grammar
  — don't flatten it into generic AI-sounding prose. See `docs/DESIGN-GUIDE.md`
  for the tone this site aims for (personal, warm, not corporate).
- **Never invent** memories, emotions, motivations, dialogue, dates, locations,
  people, or chronology. If the draft is ambiguous or silent on a detail, leave
  it out or mark `TODO: verify ...` — do not fill the gap with something
  plausible.
- **`facts.yaml` and explicit source material outrank generated prose.** If a
  raw memory in the draft conflicts with structured facts (or with existing site
  content, e.g. an event's actual date), flag the conflict to the user instead of
  silently picking one.
- **Uncertainty stays uncertainty.** Don't resolve a hedge ("I think it was
  spring") into a confident claim.
- If the story references a real conference/talk/workshop that already has (or
  should have) a canonical entry in `content/events/`, link to it — don't
  re-describe the event's factual details inside the story.

## Process

1. Read the raw draft and any accompanying `facts.yaml`/source notes the user
   provides.
2. Identify what's FACT (in the draft or facts.yaml), DRAFT (the raw prose
   itself, stylistically editable), and UNKNOWN (missing/ambiguous) — see
   `.agent/FACT-RULES.md`.
3. Produce a polished candidate page (matching `archetypes/journey/index.md`
   frontmatter) and hand it back for review, calling out anything you flagged or
   left as `TODO`.
