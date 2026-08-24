---
name: remote-site-workflow
description: Use when making changes to this website repository from any workstation (laptop or home server) — enforces the inspect/fetch/branch/validate/PR discipline regardless of which machine is running Claude. Use for any task that edits tracked files here, especially when publishing from the private vault.
---

# Remote Site Workflow

This repository has more than one independent Git clone (laptop, home
server — see `.agent/GIT-WORKFLOW.md`). This skill is the same discipline
applied consistently regardless of which one you're on.

## Process

1. **Inspect** — `git status --short --branch` before touching anything.
   Never assume the working tree is clean.
2. **Fetch** — `git fetch origin --prune`. Never trust a stale local view
   of `main` or of remote branches.
3. **Fast-forward main** — `git switch main && git pull --ff-only origin
   main`. If `--ff-only` fails, stop and investigate rather than forcing —
   it means local and remote diverged unexpectedly.
4. **Branch** — `git switch -c <task-branch>` from the now-current `main`.
   Never work directly on `main`.
5. **Edit** — using `site-maintainer` or `content-updater` as appropriate
   for the change.
6. **Validate** — `pnpm install --frozen-lockfile && hugo --minify
   --cleanDestinationDir`. Confirm 0 errors before going further.
7. **Inspect the diff** — `git diff` / `git status` — stage specific files,
   never `git add -A` on this repo (see `.agent/GIT-WORKFLOW.md` for why).
8. **Commit** — Conventional Commits, one logical change per commit.
9. **Push** — `git push origin <task-branch>`. Never force-push.
10. **PR** — create one if an authenticated GitHub integration is
    available; otherwise report the compare URL
    (`https://github.com/sabinthapa100/sabinthapa100.github.io/compare/main...<task-branch>?expand=1`)
    and a title/body.
11. **Never auto-merge.** A merge happens only on an explicit instruction
    (e.g. "publish it live"), and only after confirming the PR's diff still
    matches what was reviewed and CI is actually green — not assumed.

## Multi-computer rule

Never modify the same task branch simultaneously from two machines. If
picking up work started on the other machine, fetch and check
`git log --oneline -5 origin/<branch>` before continuing, so local history
doesn't diverge from what's already pushed.

## CI/CD is GitHub-hosted, not local

Neither the laptop nor the home server runs CI or deployment — that's
`.github/workflows/build.yml` (PRs) and `.github/workflows/deploy.yml`
(push to `main`), entirely on GitHub Actions → GitHub Pages. A pushed
branch builds and a merged `main` deploys whether or not either machine is
on. See `docs/SITE-ARCHITECTURE.md`.
