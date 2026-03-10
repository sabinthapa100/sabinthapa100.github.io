---
title: "Academia"
date: 2026-03-10
type: landing

design:
  spacing: "5rem"

sections:
  - block: markdown
    content:
      title: Academic Profile
      text: |-
        I am a Physics PhD candidate at Kent State University (expected 2026), working in theoretical and phenomenological high-energy nuclear physics.

        My current research focuses on heavy-flavor physics, especially quarkonium transport, suppression, and regeneration in QGP across RHIC and LHC collision systems. Methodologically, I work with semi-classical transport models and open-quantum-system approaches, including Lindblad evolution.

        I also explore quantum computing for HEP, with emphasis on lattice gauge theory workflows and real-time dynamics directions.
    design:
      columns: "1"

  - block: collection
    id: academia-publications
    content:
      title: Publications
      filters:
        folders:
          - publications
      count: 20
      order: desc
    design:
      view: citation

  - block: collection
    id: academia-talks
    content:
      title: Talks and Presentations
      filters:
        folders:
          - events
      count: 30
      order: desc
    design:
      view: card
      columns: 2

  - block: markdown
    content:
      title: Academic Links
      text: |-
        - [INSPIRE-HEP Author Profile](https://inspirehep.net/authors/1635423)
        - [Kent State Physics Profile](https://www.kent.edu/physics/sabin-thapa)
        - [Download Academic CV](/uploads/cv.pdf)
---
