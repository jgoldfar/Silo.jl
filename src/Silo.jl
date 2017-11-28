# Silo.jl: Wrapper around the Silo library (https://wci.llnl.gov/simulation/computer-codes/silo)
VERSION >= v"0.4.0-dev+6521" && __precompile__() 
module Silo
const depsfile = joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl")
if isfile(depsfile)
  include(depsfile)
else
  error("Silo not properly installed. Please run Pkg.build(\"Silo\")")
end

using Compat

include("libsilo_consts.jl")

include("libsilo_types.jl")

include("pmpio.jl")

include("libsilo.jl")

include("libsilo_h.jl")

include("optlists.jl")

# MAIN Interface:
#	- siloopen(..., "w") mode: creates and initializes. Done
#	- overload write(file, name, values) / silowrite(...) Done (for 1D)
#	- siloclose(...) Done
#	- names(file): values contained in file Done (for 1D)
#	- overload read(file, name) / siloread(...) Done (for 1D)

end # module
