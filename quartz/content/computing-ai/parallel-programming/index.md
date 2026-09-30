---
title: Parallel Programming
description: A source-led and experiment-driven path through shared and distributed memory, scaling, and accelerators.
tags:
  - hpc
  - parallel-computing
note_type: roadmap
status: seed
source_basis:
  - molssi-parallel
  - llnl-parallel
  - molssi-gpu
---

## Study sequence

1. Why parallel computing and the hardware hierarchy
2. Processes, threads, and memory architectures
3. Amdahl's law, strong scaling, and weak scaling
4. OpenMP and shared-memory execution
5. MPI, distributed memory, and collectives
6. Hybrid MPI + OpenMP
7. SIMD, accelerators, and GPU execution
8. Profiling, bottlenecks, and performance models

## Computational labs

- [[computing-ai/parallel-programming/shared-vs-distributed-memory|Shared vs Distributed Memory]]
- [[computing-ai/parallel-programming/strong-and-weak-scaling|Strong and Weak Scaling]]

## Source spine

Start with the hands-on [[reference-shelf#molssi-parallel|MolSSI course]]. Use the [[reference-shelf#llnl-parallel|LLNL tutorial]] for the broader architecture and programming-model picture; it is an overview, not a complete course. Register timings, hardware, correctness checks, and bottleneck analysis in each lab note.
