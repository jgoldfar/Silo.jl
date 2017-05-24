# This file is not an active part of the package. This is the code
# that uses the Clang.jl package to wrap Silo using the headers.

# Find all headers
# To run the script from Julia console:
# include(joinpath(Pkg.dir("Silo"), "src", "wrap_Silo.jl"));
push!(Libdl.DL_LOAD_PATH, "/usr/local/Cellar/llvm/4.0.0_1/lib")
using Clang.wrap_c
const wdir = dirname(@__FILE__)
const pkgbasedir = joinpath(wdir, "..")

# `outpath` specifies, where the julian wrappers would be generated.
# If the generated .jl files are ok, they have to be copied to the "src" folder
# overwriting the old ones
const outpath = joinpath(pkgbasedir, "new")
rm(outpath, recursive = true, force = true)
mkpath(outpath)
mkpath(outpath)

const incpath = joinpath(pkgbasedir, "deps", "usr", "include")
if !isdir(incpath)
  error("Run Pkg.build(\"Silo\") before trying to wrap C headers.")
end

info("Scanning Silo headers in $incpath...")
const Silo_header_files = ["silo", "pmpio"]
const Silo_headers =[joinpath(incpath, y) for y in (string(x, ".h") for x in Silo_header_files)]
# map(x->joinpath(incpath, x), readdir(incpath))

const clang_path = "/usr/local/Cellar/llvm/4.0.0_1/lib/clang/4.0.0/" # change to your clang location
const includes = [
    joinpath(clang_path, "include"),
    incpath,
    "/usr/local/Cellar/open-mpi/2.1.0/include/"
]

function find_outfile(s)
    joinpath(outpath, string(first(splitext(basename(s))), ".jl"))
end
find_libfile(s) = "libsilo"

const context = wrap_c.init(
    headers = Silo_headers,
    common_file = joinpath(outpath, "libsilo_types.jl"),
    clang_args = [
        "-D", "__STDC_LIMIT_MACROS",
        "-D", "__STDC_CONSTANT_MACROS",
        # "-v"
    ],
    # clang_diagnostics = true,
    header_library = find_libfile,
    header_outputfile = find_outfile,
    clang_includes = includes,
)

info("Generating .jl wrappers for Silo in $outpath...")
run(context)
info("Done generating .jl wrappers for Silo in $outpath")
