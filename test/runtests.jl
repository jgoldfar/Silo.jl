# Run package tests
println("Testing Silo.jl in Julia version ", VERSION)

using Base.Test
# include(joinpath("..", "src", "Silo.jl"))
using Silo
# run(`cd $(dirname(@__FILE__))/files && make`)

include("test1dwriteInt.jl")
include("test1dreadwrite.jl")

# Silo.DBInqFile(dbfile.file_name)
