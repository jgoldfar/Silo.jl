# Run package tests
println("Testing Silo.jl in Julia version ", VERSION)

using Base.Test
using Silo

@testset begin
    @test string(Silo._VERSION()) == Silo._VERSION_STRING()
    include("test1dwriteInt.jl")
    # include("test1dreadwrite.jl")
end
