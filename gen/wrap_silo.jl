# wrap_silo.jl: Generate wrapping code. See Sundials.jl (thanks!)
# This file is not an active part of the package. This is the code
# that uses the Clang.jl package to wrap Silo using the headers.

cd(dirname(@__FILE__))

using Clang.wrap_c

# silo_names = ["silo.h",]

#Clang include path for system clang: /usr/include/clang/3.4/include

JULIAHOME = "/home/jgoldfar/Documents/work/projects/julia"

clang_includes = map(x->joinpath(JULIAHOME, x),[
                       "usr/include/clang/",
                       "usr/include",
                       "usr/include/llvm",
                       "usr/include/llvm-c",
                       ]
                     )

path = "/home/jgoldfar/Documents/work/projects/Silo.jl/deps/usr/include"
check_use_header(path) = true

clang_extraargs = ["-D", "__STDC_LIMIT_MACROS", "-D", "__STDC_CONSTANT_MACROS", "-v", "-analyze"]
context = wrap_c.init(output_file = "silo.jl",
                      header_library=x->"silo",
                      clang_args = clang_extraargs,
                      clang_includes = clang_includes,
                      common_file = "libsilo_h.jl"
                      )
context.options.wrap_structs = true

# headers = map(x->joinpath(path, x), split(readall(`ls $path`)) )
# @show headers
wrap_c.wrap_c_headers(context, [joinpath(path, "silo.h")])
mv("silo.jl", "libsilo.jl")  # avoid a name conflict for case-insensitive file systems
