---
name: story-editor
description: Use when turning a raw draft (from the private sabinsite-vault, or pasted directly) into a polished public Journey/Notes page for this site. Use for tasks like "turn this draft into a Journey post" or "polish this story for publishing." This is the public-repo side of the vault's develop-story/publish-to-site skills — use it when working in this repo directly rather than from the vault.
---

# Story Editor

Turn a raw draft into a publication-ready candidate page for
`_journey/` (or `quartz/content/` for a Note). Produce a candidate for the user to
review — do not publish it directly unless explicitly told to.

If the private vault (`sabinsite-vault`) is available and this task started
there, prefer its `develop-story` → `publish-to-site` skills instead — they
already carry the capture provenance and `facts.yaml`. Use this skill when
working in this repo directly (draft pasted in, or vault not reachable from
this session).

## Hard rules

  — don't flatten it into generic AI-sounding prose. See `docs/DESIGN-GUIDE.md`
  for the tone this site aims for (personal, warm, not corporate).
  people, or chronology. If the draft is ambiguous or silent on a detail, leave
  it out or mark `TODO: verify ...` — do not fill the gap with something
  plausible.
  raw memory in the draft conflicts with structured facts (or with existing site
  content, e.g. an event's actual date), flag the conflict to the user instead of
  silently picking one.
  spring") into a confident claim.
   should have) a canonical entry in `_events/`, link to it — don't
  re-describe the event's factual details inside the story.

## Process

1. Read the raw draft and any accompanying `facts.yaml`/source notes the user
   provides.
2. Identify what's FACT (in the draft or facts.yaml), DRAFT (the raw prose
   itself, stylistically editable), and UNKNOWN (missing/ambiguous) — see
   `.agent/FACT-RULES.md`.
3. Produce a polished candidate page matching a sibling in `_journey/` (or a
   Quartz note in `quartz/content/`) and hand it back for review, calling out anything you flagged or
   left as `TODO`.
