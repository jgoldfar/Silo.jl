# Run package tests
# println("Testing Silo.jl in Julia version ", VERSION)

@static if VERSION >= v"0.7-"
  using Test
else
  using Base.Test
  range{T}(start::T; stop::T=one(T), length::Int = 100) = linspace(start, stop, length)
end
using Silo
using Compat

@testset begin
    @test string(Silo._VERSION()) == Silo._VERSION_STRING()
    include("test1dwriteInt.jl")
    # include("test1dreadwrite.jl")
end
