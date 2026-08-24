# Git Workflow Rules

- Work on a feature branch (`refactor/...`, `feat/...`, `fix/...`, `chore/...`).
  **Never push directly to `main`.**
- Open a PR against `main` when done; do not merge it yourself unless explicitly
  told to.
- Never force-push, never rewrite published history, never run `git reset --hard`
  or delete a branch without explicit user instruction.
- Conventional Commits: `feat:`, `fix:`, `docs:`, `refactor:`, `chore:`, etc. One
  logical change per commit.
- Stage specific files by name (`git add path/to/file`) rather than `git add -A`
  or `git add .`, especially since this repo's working tree can carry unrelated
  filesystem noise (e.g. mode-bit changes) that shouldn't ride along in a commit.
- HugoBlox framework/theme upgrades are deliberate, manual maintenance
  (`workflow_dispatch` on `.github/workflows/upgrade.yml`), never an unattended
  weekly job — see `docs/SITE-ARCHITECTURE.md` for the manual upgrade procedure.
