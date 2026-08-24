---
title: 'Experience'
date: 2026-03-10
type: landing

# Not part of the new information architecture (superseded by /about/'s
# Education/Teaching summary) — hidden from the auto-generated docs sidebar
# so this résumé-style page (incl. skill-level bars, which docs/DESIGN-GUIDE.md
# explicitly discourages) stops surfacing on every content page. Left in
# place, still reachable by direct URL, pending a decision on whether its
# Awards data should be migrated into About or the page retired outright.
sidebar:
  hidden: true

design:
  spacing: '5rem'

# Note: `username` refers to the user's folder name in `content/authors/`

# Page sections
sections:
  - block: resume-experience
    content:
      username: me
    design:
      # Hugo date format
      date_format: 'January 2006'
      # Education or Experience section first?
      is_education_first: false
  - block: resume-skills
    content:
      title: Technical Skills
      username: me
  - block: resume-awards
    content:
      title: Awards
      username: me
---
