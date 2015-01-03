# wrap_silo.jl: Generate wrapping code. See Sundials.jl (thanks!)
# This file is not an active part of the package. This is the code
# that uses the Clang.jl package to wrap Silo using the headers.

import Clang.wrap_c

silo_includes = map(
  x->joinpath("/Users/jgoldfar/Documents/work/projects/deps/usr/include", x),
  [
    "ioperf.h",
    "pmpio.h",
    "silo.h",
    ])

# check_use_header(path) = true
context = Clang.wrap_c.init()
wrap_c.wrap_c_headers(context, silo_includes)

mv("silo.jl", "libsilo.jl")  # avoid a name conflict for case-insensitive file systems