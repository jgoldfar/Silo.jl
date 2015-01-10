# Run package tests
include(joinpath("..", "src", "Silo.jl"))
run(`cd $(dirname(@__FILE__))/files && make`)
