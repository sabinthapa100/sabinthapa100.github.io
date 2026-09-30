---
title: Reference Shelf
description: A small registry of verified sources that anchor the public Notes garden.
tags:
  - sources
  - reference
note_type: reference
status: reference
last_verified: 2026-09-29
---

This is a curated source spine, not an exhaustive bibliography. IDs below are reused in note frontmatter as `source_basis`. Each developed note should identify the chapters, sections, or exercises actually used; listing a source here does not mean I have completed it.

## Source tiers

- **Tier A:** canonical textbooks, primary literature, major reviews, and expert lecture notes.
- **Tier B:** institutional material and official standards.
- **Tier C:** substantial, well-maintained pedagogical courses and tutorials.
- **Tier D:** supplementary intuition or implementation examples only; never the sole basis for a substantive physics claim.

## Quantum mechanics and information

### `preskill-quantum`

**John Preskill, Physics 219 / Computer Science 219: Quantum Computation.** Tier A lecture notes. The course page links notes on states and ensembles, measurement and evolution, entanglement, and later topics.

[Course information and notes](https://www.preskill.caltech.edu/ph229/)

### `nielsen-chuang`

**Michael A. Nielsen and Isaac L. Chuang, _Quantum Computation and Quantum Information_.** Cambridge University Press. The publisher identifies its listing as the 10th Anniversary Edition. Use the publisher or a lawful library copy; do not use an unofficial mirrored PDF as the canonical citation.

[Cambridge University Press edition](https://www.cambridge.org/highereducation/books/quantum-computation-and-quantum-information/01E10196D0A682A6AEFFEA52D53BE9AE)

### `ibm-quantum-learning`

**IBM Quantum Learning courses.** Tier B current course catalog. The checked catalog includes courses on basic quantum information, quantum algorithms, general quantum-information formulation, quantum error correction, and integrating quantum with high-performance computing. Recheck course availability and API details when studying.

[IBM Quantum Learning](https://quantum.cloud.ibm.com/learning/en/courses)

## Quantum field theory

### `tong-qft`

**David Tong, Quantum Field Theory lecture course.** Tier A pedagogical source. Use the course's own progression and record the specific lecture or section used in each note.

[Course page](https://davidtong.org/teaching/quantum-field-theory/)

## Open quantum systems

### `oqs-jupyterbook`

**Open Quantum Systems JupyterBook.** Tier C course material. Its overview describes a 54-hour course with theory, interactive material, and computational projects, including Qiskit examples. Check the examples' software/API age before reusing code.

[Course and notebooks](https://matteoacrossi.github.io/oqs-jupyterbook/)

## High-energy and nuclear physics

### `pdg-2025`

**Particle Data Group, 2025 Reviews: Standard Model and Related Topics.** Tier A reference collection. Use the relevant review, not the landing page alone, for technical claims.

[PDG review index](https://pdg.lbl.gov/2025/reviews/standard_model_and_related.html)

### `cern-heavy-ions`

**CERN, Heavy ions and quark-gluon plasma.** Tier B institutional context for heavy-ion physics and QGP. Use reviews and primary experimental papers for detailed scientific claims.

[CERN overview](https://home.cern/science/physics/heavy-ions-and-quark-gluon-plasma/)

### `bnl-rhic`

**Brookhaven National Laboratory, RHIC: A New Area of Physics.** Tier B institutional context for RHIC and its physics program. Use the cited experiment papers or reviews for quantitative and interpretive claims.

[Brookhaven RHIC overview](https://www.bnl.gov/rhic/new-physics.php)

## Parallel and scientific computing

### `molssi-parallel`

**MolSSI, Fundamentals of Parallel Programming.** Tier C hands-on course. The course explicitly covers distributed-memory MPI (including Python and C++ examples) and shared-memory OpenMP, with exercises.

[MolSSI parallel-programming course](https://education.molssi.org/parallel-programming/)

### `llnl-parallel`

**Lawrence Livermore National Laboratory, Introduction to Parallel Computing Tutorial.** Tier C introductory overview of parallel-computing concepts, memory architectures, programming models, and design considerations. LLNL describes it as an overview, not a complete programming course.

[LLNL tutorial](https://hpc.llnl.gov/documentation/tutorials/introduction-parallel-computing-tutorial)

### `molssi-gpu`

**MolSSI, Fundamentals of Heterogeneous Parallel Programming with CUDA C/C++.** Tier C course connecting GPU programming fundamentals with CUDA C/C++.

[MolSSI GPU course](https://education.molssi.org/gpu_programming_beginner/)

### `nvidia-cuda`

**NVIDIA CUDA Programming Guide.** Tier B vendor documentation. Check the current guide and compiler/toolkit compatibility before following version-specific material.

[NVIDIA CUDA Programming Guide](https://docs.nvidia.com/cuda/cuda-programming-guide/index.html)

### `mpi-forum`

**MPI Forum documents.** Tier B standards source for MPI specifications and related documents.

[MPI Forum documents](https://www.mpi-forum.org/docs/)

### `openmp-specs`

**OpenMP specifications.** Tier B standards source for OpenMP API specifications.

[OpenMP specifications](https://www.openmp.org/specifications/)

## Using this shelf

A note should cite the source actually used, not merely a source listed for future study. If reputable sources disagree on conventions, record both conventions and state which one the note adopts. Recheck evolving software and course pages before publishing an implementation note.
