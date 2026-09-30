---
title: Notes Conventions
description: Shared notation and provenance practices for the scientific Notes garden.
tags:
  - reference
  - conventions
note_type: conventions
status: reviewed
---

These conventions help notes connect without pretending every source uses identical notation. A note may depart from them when its source or subject requires it; state the choice locally.

## Units and conventions

- High-energy and nuclear physics notes use natural units, $\hbar = c = 1$, by default. State explicitly when restoring constants or using SI units.
- Do not assume one metric signature across all source material. Declare the signature when it affects a derivation and show any conversion.
- State Fourier-transform signs and normalization when they matter.
- Define indices, basis ordering, operator conventions, and boundary conditions before using them in a derivation.
- Check dimensions, limiting cases, and normalization where applicable.

## Source provenance

For technical notes, identify a source spine before writing. Record reusable source IDs in `source_basis`, then list the exact chapters, sections, or exercises actually used in the note's Sources section. See [[reference-shelf|Reference Shelf]].

Do not silently harmonize disagreeing sources. Record each convention, name the convention used in the note, and explain the conversion when useful.

## Reproducible computation

For computational labs, record hardware, software/compiler versions, commands, inputs, correctness checks, and measurement methodology. Include units and repeated-run summaries for performance claims. See the [[computing-ai/parallel-programming/index|Parallel Programming roadmap]].

## Maturity

`status` describes this note's state: `seed`, `studying`, `developed`, `reviewed`, or `reference`. It does not measure expertise. Use `last_verified` only for changing software/APIs or current factual claims, not to make historical theory look newly verified.
