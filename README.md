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
