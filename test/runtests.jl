# Run package tests
using Base.Test
include(joinpath("..", "src", "Silo.jl"))
# run(`cd $(dirname(@__FILE__))/files && make`)

include("test1dwriteInt.jl")
include("test1dreadwrite.jl")

# Silo.DBInqFile(dbfile.file_name)
