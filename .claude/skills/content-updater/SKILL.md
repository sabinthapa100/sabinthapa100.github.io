---
name: content-updater
description: Use when adding or updating a single publication, event, project, research page, note, journey item, or Now update on this site. Use for tasks like "add this talk," "update my Now page," "add a new publication," or "log this conference."
---

# Content Updater

Add or update exactly one content item, using the correct archetype and never
inventing facts. For structural/navigation/build changes, use `site-maintainer`
instead. For turning a private raw draft into public prose, use `story-editor`.

## Process

1. **Pick the right source** — `_events/`, `_projects/`, `_journey/`, the single
   `_bibliography/papers.bib`, or `quartz/content/` for Notes. Page-level content
   belongs in `_pages/`. See `.agent/ARCHITECTURE.md`.
2. **Check for an existing canonical entry first.** A talk/conference/workshop
   has one `_events/` record; a publication has one BibTeX entry.
3. **Follow a sibling entry's schema and style** before adding frontmatter or
   markup; Hugo-era files and archetypes are archived sources, not templates.
4. **Fill in only what's given.** Anything not stated by the user or found in an
   existing repo file gets `TODO: verify ...` — never guessed. If the user gives
   you a URL for the item (e.g. a conference page), fetching it to confirm a date
   or title is verification, not invention — do that rather than leaving an
   avoidable TODO. Full rules: `.agent/FACT-RULES.md`.
5. **Respect metadata over folder structure** — project lifecycle is status
   metadata, never a `current/` or `old/` folder. Quartz notes use their hub
   directory and Obsidian-style frontmatter.
6. **For a technical Note, identify a source spine before drafting.** Prefer
   canonical textbooks/papers and official institutional material; record
   actual sources used in `source_basis` via IDs from `quartz/content/reference-shelf.md`.
   Do not write a mini-textbook from model memory alone.
7. **Use note maturity metadata**: `note_type` and `status` (`seed`, `studying`,
   `developed`, `reviewed`, or `reference`). `last_verified` is for evolving
   software, APIs, or current factual claims, not a fake freshness date.
8. **Media**: use descriptive kebab-case filenames, optimize for the web, and
   strip unnecessary EXIF/GPS. See `docs/MEDIA-GUIDE.md`.
9. **Keep dates and routes accurate.** Preserve published URLs; record any
   legacy redirect in `scripts/migration/routes.json`.
10. **Validate** with `bash scripts/build_all.sh` when local Ruby dependencies
   are available, then confirm the item appears in its section. GitHub Actions
   is the authoritative build when local Ruby headers are unavailable.

## Guardrails

- Don't fabricate content to fill an empty section (Notes, Journey) — one real
  item is better than several plausible-sounding placeholders.
- Don't upgrade hedged language ("learning," "exploring") into expertise claims.
- Don't create a second canonical entry for an event that already has one.
