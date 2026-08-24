# Private Vault Interface

This public repo holds only publication-ready content. Raw drafts, unpublished
facts, and source material live in a **separate, private** repository — never in
this one.

## Intended workstation layout

```text
SabinSite/
├── site/                # this public repo
├── vault/                # separate PRIVATE Git repository
└── media-originals/      # local/home-server media archive, not Git
```

## Vault structure (future, not part of this repo)

```text
vault/
├── inbox/
├── drafts/
│   ├── journey/
│   ├── notes/
│   ├── research/
│   └── events/
├── facts/
├── sources/
├── reading/
├── publish-ready/
└── planning/
```

A typical draft source:

```text
drafts/journey/2019-arriving-at-kent/
├── raw.md
├── facts.yaml
├── sources.md
└── photo-selection.md
```

## Rules governing the interface

- AI may improve `raw.md`'s prose. AI may **not** alter or invent facts in
  `facts.yaml` — see `.agent/FACT-RULES.md` and the `story-editor` skill.
- High-resolution original photographs/videos stay in `media-originals/`, never
  in Git. Only intentionally selected, web-optimized media is copied into this
  public site (see `docs/MEDIA-GUIDE.md`).
- The vault may eventually be a private GitHub repository so Claude Code on web/
  mobile can work with its text safely — that migration is a future milestone,
  not part of this refactor.

## Status

Not yet created. This document exists so the interface is defined before the
vault exists, and so no private material is ever pasted directly into this
public repo in the meantime.
