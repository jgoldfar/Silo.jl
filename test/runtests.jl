# Run package tests
include(joinpath("..", "src", "Silo.jl"))
# run(`cd $(dirname(@__FILE__))/files && make`)
# Silo.Version()
# v2 = Silo._VERSION
println("Silo version ", Silo._VERSION)
println(Silo.VersionGE(3, 0, 0)) #=true)
