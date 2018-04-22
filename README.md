Silo.jl
=======

[![Join the chat at https://gitter.im/jgoldfar/Silo.jl](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/jgoldfar/Silo.jl?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status](https://img.shields.io/travis/jgoldfar/Silo.jl.svg?style=flat-square)](https://travis-ci.org/jgoldfar/Silo.jl)
[![Coverage Status](https://coveralls.io/repos/jgoldfar/Silo.jl/badge.svg?branch=master)](https://coveralls.io/r/jgoldfar/Silo.jl?branch=master)
[![Silo](http://pkg.julialang.org/badges/Silo_release.svg)](http://pkg.julialang.org/?pkg=Silo&ver=release)
### What is this repository for? ###

* Wrapper for the [Silo file format](https://wci.llnl.gov/simulation/computer-codes/silo) (version 4.10.2) in [Julia](http://julialang.org/), generated using [`Clang.jl`](https://github.com/ihnorton/Clang.jl).

* Though I will continue to update this when I have time and interest, the very basic use case (in terms of high-level functionality) exemplified in the code and tests is typical for my needs. I welcome the extension of this package to the package's full generality on the high-level interface. Though it hasn't been extensively tested, the C-level wrappers output by Clang.jl should work fine for any "advanced" functionality you need from silo.

* v0.2.0

### How do I get set up? ###

* For installation/building of the silo library, [`BinDeps.jl`](https://github.com/JuliaLang/BinDeps.jl). package is required.

* To contribute, please make an issue or pull request. As a general guideline, modifications or additional low-level wrappers can be added to libsilo.jl. High-level wrappers go in the appropriate file(s).

### Who do I talk to? ###

* Jonathan Goldfarb <jgoldfar@my.fit.edu>

### Roadmap ###

- [0.x.0]
    - Windows support
    - Julia v0.6+ support

- [1.0.0]

    - High-level Silo writing for more objects
    - High-level Silo reading for more objects
    - Full support for standard options used in library
