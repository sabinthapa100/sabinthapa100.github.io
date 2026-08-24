---
name: site-maintainer
description: Use when making structural changes to this Hugo/HugoBlox website — navigation, config, layouts, workflows, or moving/renaming content — to preserve architecture, URLs, buildability, and Git discipline. Use for tasks like "update the nav," "fix the build," "reorganize a section," or "check the site still builds."
---

# Site Maintainer

Maintain or improve this Hugo/HugoBlox website while preserving architecture,
URLs, content integrity, buildability, and long-term maintainability. This is a
structural/maintenance skill — for adding a single content item, use
`content-updater` instead.

## Process

1. **Inspect before editing.** Read the current state of whatever you're about to
   touch (`config/_default/menus.yaml` for nav, the relevant `content/` section,
   the relevant workflow file) — don't assume.
2. **Make the minimal coherent change.** Don't refactor unrelated things while
   you're in there.
3. **Follow existing Hugo/HugoBlox conventions** — check a sibling file for the
   pattern before inventing a new one.
4. **Preserve URLs.** If a page moves or is retired, add `aliases:` to its
   replacement before removing the old page. See `.agent/ARCHITECTURE.md`.
5. **Avoid new dependencies.** Don't introduce a JS framework, CMS, or database
   to solve a static-site problem. Don't add a dependency for something one Hugo
   template/shortcode already does.
6. **Run build validation** before calling anything done:
   ```bash
   pnpm install
   hugo --minify
   ```
   Check for build errors/warnings, confirm the primary nav items exist and are
   in the right order, and spot-check that the section you touched renders.
7. **Git discipline.** Feature branch, never push to `main` directly, stage
   specific files (not `git add -A`) — see `.agent/GIT-WORKFLOW.md`.

## Guardrails

- Never remove existing publications, events, or author data without confirming
  the content has been migrated elsewhere first.
- Never re-enable scheduled/unattended automation (e.g. the HugoBlox upgrade
  workflow) without being asked — see `docs/SITE-ARCHITECTURE.md`.
- If you find unexpected repo state (uncommitted work, stray files, a broken
  workflow), report it before working around it.
