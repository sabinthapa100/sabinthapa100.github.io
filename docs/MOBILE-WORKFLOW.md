# Mobile / Phone-First Workflow

This repo — together with the private `sabinsite-vault` (see
`docs/VAULT-INTERFACE.md`) — is designed so a passing thought, a memory, or
a conference story can be handled from a phone with nothing more than
natural language, and the public website only changes when that's actually
what was asked for.

## The flow

```text
Phone idea
    ↓
Private capture (vault, immutable, timestamped)
    ↓
Develop (optional — build a draft from one or more captures)
    ↓
Prepare (optional — fact-check, produce a publish-ready version)
    ↓
Explicit "publish this" / "put this on my website"
    ↓
Public content branch (this repo)
    ↓
Build + site-reviewer
    ↓
Push + PR
    ↓
Explicit "publish it live" + green CI
    ↓
Merge → GitHub Pages
```

Nothing left of the "Explicit publish" line ever touches this repository.
Everything right of it goes through a branch and a PR — never a direct
push, never an automatic merge.

## Intent levels

| You say (roughly) | What happens | Touches this repo? |
|---|---|---|
| "Remember this...", "I just realized...", "Save this" | Capture: raw words preserved verbatim, timestamped, privately | No |
| "Work on that story", "organize those thoughts" | Develop: draft built from captures in the vault | No |
| "Prepare this for Journey/Notes" | Prepare: fact-checked publish-ready version in the vault | No |
| "Put this on my website", "publish this" | Publish: branch + page + build + review + push + PR here | Yes — branch + PR only |
| "Publish it live" (after a green PR exists) | Merge the specific content PR, verify deployment | Yes — merge |
| "Add this to my existing story about X" | Update: find the canonical work item / public page, don't duplicate | Depends on which stage |

If intent is ambiguous, the default is capture-only. Publishing is always a
deliberate, explicit step — never inferred from a casual mention.

## What you can safely do without a local build

- Any capture/develop/prepare step happens entirely in the vault and never
  needs Hugo at all.
- A single content publish (one event, one note, one journey entry) via the
  vault's `publish-to-site` skill: it builds and runs `site-reviewer`
  itself before pushing, so a red result surfaces before anything reaches
  GitHub.

## What still needs care

- Structural changes (nav, config, layouts, the content-architecture
  itself) are higher-risk — prefer doing these at a desktop where the
  result can be inspected directly, or at least review the CI build
  preview carefully before merging.
- "Publish it live" only ever applies to the one content PR just discussed
  — it is never blanket permission to merge unrelated pending work.

## Where the machines fit

Laptop and home server are independent Git clones of this repo (see
`.agent/GIT-WORKFLOW.md`); the vault currently lives only on the home
server. CI and deployment are GitHub-hosted (GitHub Actions →
GitHub Pages) — neither machine needs to be on for a pushed branch to
build or a merge to deploy.
