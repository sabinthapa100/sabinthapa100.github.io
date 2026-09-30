---
title: Shared vs Distributed Memory
description: Seed computational note comparing two parallel-programming models through sourced examples.
tags:
  - hpc
  - parallel-computing
note_type: computational-lab
status: seed
area: computing-ai
prerequisites:
  - basic programming
source_basis:
  - molssi-parallel
  - llnl-parallel
---

## Question

What changes in the program when parallel workers share memory versus communicate across separate address spaces?

## Source record

- [[reference-shelf#molssi-parallel|MolSSI]]: TODO record the MPI and OpenMP episodes completed.
- [[reference-shelf#llnl-parallel|LLNL]]: TODO record the architecture/programming-model sections used.

## Goal

Build one small correct example for each model and compare what each model makes explicit.

## Theory and assumptions

TODO: write after reading the source material. Record process/thread terminology and the memory model used by each example.

## Minimal implementation

TODO: add a small OpenMP example and an MPI example; do not paste tutorial code without attribution and explanation.

## Reproduction command

```sh
# TODO: add the sourced build/run command after choosing a benchmark and environment.
```

## Correctness checks

TODO: compare results with a serial baseline and test more than one worker count.

## Hardware and software

TODO: record machine, compiler/runtime, library versions, and command lines before timing.

## What I learned

TODO: record what changed in the implementation and what surprised me.

## Sources and further reading

See [[reference-shelf#molssi-parallel|MolSSI]] and [[reference-shelf#llnl-parallel|LLNL]].
