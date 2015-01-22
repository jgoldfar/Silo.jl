Silo.jl
=======
[![Build Status](https://img.shields.io/travis/jgoldfar/Silo.jl.svg?style=flat-square)](https://travis-ci.org/jgoldfar/Silo.jl)
[![Coverage Status](https://coveralls.io/repos/jgoldfar/Silo.jl/badge.svg)](https://coveralls.io/r/jgoldfar/Silo.jl)
### What is this repository for? ###

* Wrapper for the [Silo file format](https://wci.llnl.gov/simulation/computer-codes/silo) in [Julia](http://julialang.org/), generated using [`Clang.jl`](https://github.com/ihnorton/Clang.jl). Inspiration for the generation scripts was taken from [Eglib.jl](https://github.com/ihnorton/Eglib.jl/blob/master/util/wrap.jl) (Thanks!).

* Though I will continue to update this when I have time and interest, the very basic use case (in terms of high-level functionality) exemplified in the code and tests is typical for my needs. I welcome the extension of this package to the package's full generality on the high-level interface. Though it hasn't been extensively tested, the C-level wrappers output by Clang.jl should work fine for any "advanced" functionality you need from silo.

* v1.0

### How do I get set up? ###

* For installation/building of the silo library, [`BinDeps.jl`](https://github.com/JuliaLang/BinDeps.jl). package is required.

* To contribute, please make an issue or pull request. As a general guideline, modifications or additional low-level wrappers can be added to libsilo.jl, and helpers (only) can be added (only) to libsilo_h.jl. High-level wrappers go in the appropriate file(s).

### Who do I talk to? ###

* Jonathan Goldfarb <jgoldfar@my.fit.edu>
