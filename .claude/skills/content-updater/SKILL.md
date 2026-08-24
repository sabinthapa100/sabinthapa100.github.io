---
name: content-updater
description: Use when adding or updating a single publication, event, project, research page, note, journey item, or Now update on this site. Use for tasks like "add this talk," "update my Now page," "add a new publication," or "log this conference."
---

# Content Updater

Add or update exactly one content item, using the correct archetype and never
inventing facts. For structural/navigation/build changes, use `site-maintainer`
instead. For turning a private raw draft into public prose, use `story-editor`.

## Process

1. **Pick the right content type** — event, publication, project, note, or
   journey entry. See `.agent/ARCHITECTURE.md` if unsure which section it
   belongs in (in particular: a talk/conference/workshop is always an `events/`
   entry — never duplicated into Journey or elsewhere).
2. **Check for an existing canonical entry first.** Search `content/<section>/`
   for anything covering the same real-world talk/paper/project before creating a
   new one — update in place if found.
3. **Start from the archetype**: `archetypes/events/index.md`,
   `archetypes/publications/index.md`, `archetypes/projects/index.md`,
   `archetypes/notes/index.md`, or `archetypes/journey/index.md`.
4. **Fill in only what's given.** Anything not stated by the user or found in an
   existing repo file gets `TODO: verify ...` — never guessed. If the user gives
   you a URL for the item (e.g. a conference page), fetching it to confirm a date
   or title is verification, not invention — do that rather than leaving an
   avoidable TODO. Full rules: `.agent/FACT-RULES.md`.
5. **Respect metadata over folder structure** — e.g. a project's lifecycle is
   `status: ongoing`/`completed`/`exploration` in frontmatter, never a
   `current/`/`old/` folder. A note's hub is its `area:` field, not a new
   sub-folder; it can carry several `topics: []`.
6. **Media**: descriptive kebab-case filenames, primary image named
   `featured.<ext>` in the page bundle, no giant unoptimized originals, no
   unnecessary EXIF/GPS. See `docs/MEDIA-GUIDE.md`.
7. **Keep `date` and `lastmod` current on every touch.** The homepage's
   "Recent Updates" collection sorts by `date` across Notes/Journey/Events/
   Publications/Projects — an edit that doesn't bump it won't surface there.
8. **Validate**: run `hugo --minify` (or `hugo server`) and confirm the new/
   updated page builds and appears in its section listing.

## Guardrails

- Don't fabricate content to fill an empty section (Notes, Journey) — one real
  item is better than several plausible-sounding placeholders.
- Don't upgrade hedged language ("learning," "exploring") into expertise claims.
- Don't create a second canonical entry for an event that already has one.
