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
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV
        url: /uploads/cv.pdf
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
      title: Profile Summary
      subtitle: ''
      text: |-
        **Academic focus**

        I am a Physics PhD candidate at Kent State University (expected 2026), working in theoretical and phenomenological high-energy nuclear physics. My main research area is heavy-flavor physics, especially quarkonium transport, suppression, and regeneration in QGP across RHIC and LHC collision systems. I use both semi-classical transport modeling and open-quantum-system approaches (including Lindblad evolution), with collaborations connected to the HEFTY community.

        **Industry-oriented focus**

        I build reproducible scientific software and analysis workflows using Python, C++, Linux, Git, Slurm/HPC pipelines, and quantitative validation practices. I am also developing hands-on experience in quantum computing (Qiskit; state-prep and variational workflows) and learning ML/AI tools for scientific workflow acceleration.

        - [View Academic Profile](/academia/)
        - [View Industry Profile](/industry/)
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
      title: Talks and Research Presentations
      filters:
        folders:
          - events
      count: 12
      order: desc
    design:
      view: card
      columns: 2
  - block: markdown
    content:
      title: Documents
      text: |-
        - [Download Academic CV](/uploads/cv.pdf)
        - [Download Resume](/uploads/resume.pdf)
    design:
      columns: '1'
---
