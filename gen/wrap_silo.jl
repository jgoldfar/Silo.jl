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
headerlist = ["silo.h",]
check_use_header(path) = true

clang_extraargs = ["-D", "__STDC_LIMIT_MACROS", "-D", "__STDC_CONSTANT_MACROS", "-v"]
context = wrap_c.init(output_file = "libsilo.jl",
                      headers = [joinpath(path, x) for x in headerlist],
                      header_library=x->"libsilo",
                      clang_args = clang_extraargs,
                      clang_includes = clang_includes,
                      common_file = "libsilo_h.jl",
#                       rewriter = x->begin
#                         println(x)
#                         replace(x, "DB", "")
#                       end
                      )

run(context)
