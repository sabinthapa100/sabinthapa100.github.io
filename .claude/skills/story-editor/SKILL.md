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

- **Preserve the user's voice.** Improve structure, clarity, rhythm, and grammar;
   do not flatten the draft into generic prose. See `docs/DESIGN-GUIDE.md`.
- **Never invent** memories, emotions, motivations, dialogue, dates, locations,
   people, or chronology. If a detail is missing or uncertain, leave it out or
   mark `TODO: verify ...`.
- **Respect provenance.** Explicit facts and source material outrank generated
   prose. Flag conflicts with existing pages or canonical event dates.
- **Keep uncertainty explicit.** Do not turn a hedge into a confident claim.
- **Link canonical events.** If a story references an event in `_events/`, link
   it rather than duplicating its factual details.
- **Notes are source-first.** For a technical Note, identify a source spine and
   the actual question/learning goal before drafting. Capture which sections
   were consulted. Do not produce a mini-textbook from model memory alone.
- **Study is not publication.** A request to learn or capture an idea creates a
   private study plan or draft; only an explicit publish request moves verified
   material into `quartz/content/`.

## Process

1. Read the raw draft and any accompanying `facts.yaml`/source notes the user
   provides.
2. Identify what's FACT (in the draft or facts.yaml), DRAFT (the raw prose
   itself, stylistically editable), and UNKNOWN (missing/ambiguous) — see
   `.agent/FACT-RULES.md`.
3. Produce a polished candidate page matching a sibling in `_journey/` (or a
   Quartz note in `quartz/content/`) and hand it back for review, calling out anything you flagged or
   left as `TODO`.
