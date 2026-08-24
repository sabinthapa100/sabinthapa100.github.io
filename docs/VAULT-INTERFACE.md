# Private Vault Interface

This public repo holds only publication-ready content. Raw captures,
unpublished facts, and in-progress drafts live in a **separate, private**
repository — never in this one.

## Current setup

```text
sabinsite-vault/          PRIVATE — local git repo on the home server
sabinsite-media/          private original media, home server, not Git
sabinthapa100.github.io/  this repo (public)
```

`sabinsite-vault` has **no GitHub remote configured** — no authenticated
write access was available to create the private GitHub repository when it
was set up, so it exists as a local repository on the home server only.
Commits happen there; nothing is pushed anywhere until a remote exists.

## Vault structure

```text
sabinsite-vault/
├── captures/YYYY/MM/     one immutable file per raw phone/text capture
├── work/
│   ├── journey/          evolving personal/scientific story work items
│   ├── notes/            evolving intellectual/technical work items
│   ├── research/         evolving research-direction work items
│   └── events/           staging notes before a canonical public Event exists
├── sources/               shared external references
├── reading/                book/article/video references, not yet developed
├── publish-ready/          pointers to work items ready for an explicit publish
└── archive/                retired work items and synthetic test content
```

A typical work item:

```text
work/journey/coming-to-the-united-states/
├── meta.yaml     # captures it references, status, topics
├── facts.yaml    # explicit / uncertain / contradicted claims + sources
├── sources.md
├── draft.md      # produced by develop-story / develop-note
└── publish.md    # produced once ready to prepare for the public site
```

## Rules governing the interface

- A capture file is immutable — new material is appended as a new capture,
  never edited into an old one. See the vault's `CLAUDE.md` and
  `.claude/skills/capture/SKILL.md`.
- AI may improve a draft's prose. AI may **not** alter or invent facts in
  `facts.yaml` — see `.agent/FACT-RULES.md` here and the vault's own
  `develop-story`/`develop-note` skills.
- `captured_at` (when something was told to Claude) is never confused with
  the historical date content describes — the vault enforces this
  explicitly in its capture schema.
- High-resolution original photographs/videos stay in `sabinsite-media/` on
  the home server, never in Git. Only intentionally selected, web-optimized
  media is copied into this public site (see `docs/MEDIA-GUIDE.md`).
- Publishing from the vault into this repo always goes through the vault's
  `publish-to-site` skill: a content branch here, a build, a review, a
  push, a PR — never a direct merge. See `docs/MOBILE-WORKFLOW.md`.

## Status

Created and in active use (home server, `/home/sabin/sabinsite-vault`).
No GitHub remote yet — if/when authenticated GitHub access to create a
private repository becomes available, that's the next step, followed by a
laptop clone. Until then it's a single-machine private repository, not a
synchronized one.
