# Silo.jl: Wrapper around the Silo library (https://wci.llnl.gov/simulation/computer-codes/silo)
module Silo
if isfile(joinpath(dirname(dirname(@__FILE__)),"deps","deps.jl"))
    include("../deps/deps.jl")
else
    error("Silo not properly installed. Please run Pkg.build(\"Silo\")")
end
end # module
