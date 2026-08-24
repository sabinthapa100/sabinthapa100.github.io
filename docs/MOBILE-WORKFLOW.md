# Mobile / Away-From-Desktop Workflow

This repo is designed so a small content change can be made from Claude Code on
a phone or any lightweight client, without needing the full local Hugo toolchain.

## What you can safely do without a local build

- Add or update a single content item (event, note, journey entry, Now update)
  using the matching archetype in `archetypes/` — Claude follows
  `.claude/skills/content-updater/SKILL.md` and `.agent/CONTENT-RULES.md`
  automatically.
- Commit to a feature branch and open a PR. The `build.yml` CI workflow builds
  the site on the PR — a red check means something broke, without you needing
  Hugo installed locally.

## What still needs care

- Structural changes (nav, config, layouts) are higher-risk — prefer doing these
  at a desktop where you can run `hugo server` and look at the result, or at
  least review the CI build-preview carefully before merging.
- Never merge a PR with a failing or unreviewed CI build just because you're
  away from a desktop.

## Recommended pattern

1. Open a short, scoped request ("add this talk," "update Now") — matches one
   content-updater task.
2. Let Claude open a PR, not push to `main`.
3. Check the CI build result on the PR (via GitHub's mobile app or web) before
   merging.
4. Do structural/design work in a longer desktop session instead.
