---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2026-03-10
type: landing

design:
  # Default section spacing
  spacing: '6rem'

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: me
      text: ''
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
      title: ''
      subtitle: ''
      text: |-
        I am a Physics PhD candidate at Kent State University (expected 2026), working in theoretical and phenomenological high-energy nuclear physics, with a growing interest in quantum computing and AI for scientific workflows.

        - [Research directions](/research/)
        - [About](/about/)
    design:
      columns: '1'
  - block: collection
    id: papers
    content:
      title: Selected Publications
      filters:
        folders:
          - publications
      count: 6
      order: desc
    design:
      view: citation
  - block: collection
    id: talks
    content:
      title: Talks & Events
      filters:
        folders:
          - events
      count: 12
      order: desc
    design:
      view: card
      columns: 2
---
