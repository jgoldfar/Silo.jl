# Run package tests
println("Testing Silo.jl in Julia version ", VERSION)

if VERSION >= v"0.5-"
  using Base.Test
else
  using BaseTestNext
  const Test = BaseTestNext
end
using Silo

@testset begin
    @test string(Silo._VERSION()) == Silo._VERSION_STRING()
    include("test1dwriteInt.jl")
    # include("test1dreadwrite.jl")
end
