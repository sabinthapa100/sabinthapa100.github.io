# Sabin Thapa Website

Personal website source for [https://sabinthapa100.github.io](https://sabinthapa100.github.io), built with Hugo + HugoBlox.

## What Is In This Site

- Homepage with profile summary and document links
- Dedicated pages for:
  - Academia (`/academia/`)
  - Industry (`/industry/`)
- Publications list
- Talks and presentations list
- CV and resume downloads from `static/uploads/`

## Key Content Files

- Author/profile data: `data/authors/me.yaml`
- Homepage: `content/_index.md`
- Academia page: `content/academia.md`
- Industry page: `content/industry.md`
- Experience page: `content/experience.md`
- Talks: `content/events/*/index.md`
- Publications: `content/publications/*/index.md`
- Navigation: `config/_default/menus.yaml`
- Site identity/settings: `config/_default/params.yaml`, `config/_default/hugo.yaml`

## Local Development

Prerequisites:

- Hugo extended (v0.153+ recommended by current theme module)
- Node.js + npm

Install dependencies:

```bash
npm install
```

Run local server:

```bash
hugo server --disableFastRender
```

Production build:

```bash
hugo --minify
```

## Notes

- This repo intentionally removed starter/template demo content (blog/course/project/slide examples).
- The local `agents/` folder is not part of the published site.

## Improvement Roadmap

- Add a dedicated `talks/` listing page with filters by year and topic.
- Add `publications.bib` + auto-import workflow for easier publication updates.
- Add structured JSON-LD for person/publication metadata improvements.
- Add analytics + privacy-friendly monitoring (optional).
- Add a short media/press section if needed.

## AI Agent + Git Workflow (Recommended)

1. Create a short issue for each change (content update, publication, style tweak).
2. Ask the AI agent to work on a branch per issue (`feat/...`, `fix/...`).
3. Let CI run automatically on PR (`.github/workflows/build.yml`).
4. Require green checks before merge.
5. Merge to `main` and let deploy workflow publish to GitHub Pages (`.github/workflows/deploy.yml`).

Recommended prompt pattern for agent tasks:

```text
Goal:
Scope:
Files allowed to change:
Accuracy constraints:
Definition of done:
```

## Existing CI/CD

- CI build on pull requests: `.github/workflows/build.yml`
- Auto deploy on push to `main`: `.github/workflows/deploy.yml`
- Optional automated workflows:
  - `.github/workflows/import-publications.yml`
  - `.github/workflows/upgrade.yml`
