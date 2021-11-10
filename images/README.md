# PerfChecker

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://JuliaConstraints.github.io/PerfChecker.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://JuliaConstraints.github.io/PerfChecker.jl/dev)
[![Build Status](https://github.com/JuliaConstraints/PerfChecker.jl/workflows/CI/badge.svg)](https://github.com/JuliaConstraints/PerfChecker.jl/actions)
[![codecov](https://codecov.io/gh/JuliaConstraints/PerfChecker.jl/branch/main/graph/badge.svg?token=YVJhN4dpBp)](https://codecov.io/gh/JuliaConstraints/PerfChecker.jl)
[![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)

This is a small collections of semi-automated performance checking tools for Julia packages. The long-term goal is to have it run in a similar fashion than the test environment.

Automatic check of allocation is not ready yet. It works only within a test environment (see test/runtests.jl).

![AllocCheck](/images/PerfChecker-alloc_check.png)

Help to solve the issue of making the script in `perf/allocs.jl` and not only `runtests.jl` is more than welcome. See issue #2

### A non-exhaustive list of expected features:
- [x] Automatic allocation check
- [ ] Automatic Benchmark
- [ ] Automatic Profiling
- [ ] Automatic plots of previous features
  - [x] using commit/project version label
  - [x] allocations
  - [ ] benchmark
  - [ ] profiling