---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2026-08-24
type: landing

design:
  # Default section spacing
  spacing: '6rem'

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: me
      headings:
        about: ''
        education: ''
        interests: ''
    design:
      # Use the new Gradient Mesh which automatically adapts to the selected theme colors
      background:
        gradient_mesh:
          enable: true

      # Name heading sizing to accommodate long or short names
      name:
        size: md # Options: xs, sm, md, lg (default), xl

      # Avatar customization
      avatar:
        size: medium # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded
  - block: markdown
    content:
      title: Research Directions
      text: |-
        **[QCD Matter at Extreme Conditions](/research/)** — quark-gluon plasma formation and evolution under extreme temperature and energy density.

        **[Quantum & Semiclassical Transport](/research/)** — open-quantum-system and semiclassical methods connecting QCD theory to RHIC/LHC data.

        **[Small and Light Collision Systems](/research/)** — how far toward smaller collision systems do QGP-like effects persist?

        **[Quantum & AI Explorations](/research/quantum-computing/)** — exploratory work in quantum computing and AI for fundamental physics, not yet an established specialty.
    design:
      columns: "2"
  - block: collection
    id: recent
    content:
      title: Recent Updates
      filters:
        folders:
          - notes
          - journey
          - events
          - publications
          - projects
      count: 6
      order: desc
    design:
      view: card
      columns: 3
---
