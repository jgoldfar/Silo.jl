# wrap_silo.jl: Generate wrapping code. See Sundials.jl (thanks!)
# This file is not an active part of the package. This is the code
# that uses the Clang.jl package to wrap Silo using the headers.

cd(dirname(@__FILE__))

using Clang.wrap_c

silo_names = ["silo.h",]

LLVM_VER = "3.3"
LLVM_BUILD_TYPE="Release"

JULIA_ROOT=abspath(JULIA_HOME, "../../")
LLVM_PATH=joinpath(JULIA_ROOT, "deps/llvm-$LLVM_VER")

clang_includes = [joinpath(LLVM_PATH,f)::ASCIIString for f in (
    "build_$LLVM_BUILD_TYPE/tools/clang/include/clang",
    "include/llvm",
    "include"
    )]

check_use_header(path) = true

clang_extraargs = ["-D", "__STDC_LIMIT_MACROS", "-D", "__STDC_CONSTANT_MACROS"]
context = wrap_c.init(output_file = "silo.jl", clang_args = clang_extraargs, clang_includes = clang_includes, common_file = "libsilo_common.jl", clang_diagnostics = true)
context.options.wrap_structs = true

path = "/home/jgoldfar/Documents/work/projects/deps/usr/include"
headers = map(x->joinpath(path, x),split(readall(`ls $path`)) )
println("Wrapping the following headers:")
@show headers

println("-----")

wrap_c.wrap_c_headers(context, headers)

mv("silo.jl", "libsilo.jl")  # avoid a name conflict for case-insensitive file systems
