---
title: Strong and Weak Scaling
description: Seed performance experiment comparing fixed-size and scaled-size workloads.
tags:
  - hpc
  - parallel-computing
  - performance
note_type: computational-lab
status: seed
area: computing-ai
prerequisites:
  - serial baseline
  - parallel-programming basics
source_basis:
  - molssi-parallel
  - llnl-parallel
---

## Question

How does runtime change as workers are added when the total problem is fixed, versus when work per worker is held approximately fixed?

## Source record

- [[reference-shelf#molssi-parallel|MolSSI]]: TODO identify the scaling material and exercise used.
- [[reference-shelf#llnl-parallel|LLNL]]: TODO identify the scaling and design sections used.

## Goal

Measure strong and weak scaling for one small, reproducible workload.

## Serial baseline

TODO: define the workload, correctness test, input size, and baseline timing method.

## Parallel strategy

TODO: state the implementation model and what work or problem size changes between runs.

## Hardware and software

TODO: record processor, memory, compiler/runtime, library versions, and launch commands.

## Results

TODO: store raw timings, run count, summary statistic, speedup, and efficiency with units.

## Bottleneck analysis

TODO: investigate communication, synchronization, memory bandwidth, load imbalance, and measurement overhead against the observed data.

## What I learned

TODO: write after running and checking the experiment.

## Sources and further reading

See [[reference-shelf#molssi-parallel|MolSSI]] and [[reference-shelf#llnl-parallel|LLNL]].
