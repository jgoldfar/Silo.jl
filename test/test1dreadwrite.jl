# test1dreadwrite.jl: Writing of 1D curves to Silo files

dbfile = Silo.siloopen(joinpath(dirname(@__FILE__),"test1dreadwrite.silo"), "w")
xin = collect(linspace(0, 1, 10))
yin = collect(linspace(1, 2, 10))

Silo.silowrite(dbfile, "Test_Curve", xin, yin)
# @show dbfile
Silo.siloclose(dbfile)
# @show dbfile

dbfile = Silo.siloopen(joinpath(dirname(@__FILE__),"test1dreadwrite.silo"), "r")
# @show Silo.names(dbfile)
x,y = Silo.siloread(dbfile, "Test_Curve")
Silo.siloclose(dbfile)

@test_approx_eq x xin
@test_approx_eq y yin

# @show x
# @show y
