# Silo.jl: Wrapper around the Silo library (https://wci.llnl.gov/simulation/computer-codes/silo)
module Silo
if isfile(joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl"))
    include(joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl"))
else
    error("Silo not properly installed. Please run Pkg.build(\"Silo\")")
end

using StrPack

# "Sections" of code based on documentation

include("libsilo_h.jl")

include("libsilo.jl")

println("Silo version ", _VERSION, " loaded.")

#TODO: Create rough wrapper for main Silo functions we need, and a uniform(ish) interface to them per e.g. the HDF5.jl package.

# MAIN Interface:
#	- siloopen(..., "w") mode: creates and initializes
#	- overload write(file, name, values) / silowrite(...)
#	- siloclose(...)
#	- names(file): values contained in file
#	- overload read(file, name) / siloread(...)

end # module
