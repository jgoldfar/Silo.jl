# wrap_silo.jl: Generate wrapping code. See Sundials.jl (thanks!)
# This file is not an active part of the package. This is the code
# that uses the Clang.jl package to wrap Silo using the headers.

import Clang.wrap_c

silo_includes = map(
  x->joinpath("/home/jgoldfar/Documents/work/projects/deps/usr/include", x),
  [
    "silo.h",
    ])
clang_args = ["-D", "__STDC_LIMIT_MACROS", "-D", "__STDC_CONSTANT_MACROS"]
context = Clang.wrap_c.init(clang_diagnostics = true, clang_args = clang_args, common_file = "silo_common.jl", output_file = "libsilo.jl")
context.options.wrap_structs = true


wrap_c.wrap_c_headers(context, silo_includes)

#mv("silo.jl", "libsilo.jl")  # avoid a name conflict for case-insensitive file systems
