# test/example for writing 1D arrays to a Silo file.
@static if VERSION >= v"0.7-"
    using Printf
end

dbopt = Silo.DBMakeOptlist(1)
#     DBoptlist	*dbopt = DBMakeOptlist(1);
#     char         fn[100], title[100];
#     int     lbuf = ndp->rgr.lbuf;
#     int     ubuf = ndp->rgr.ubuf;
#     int     gmax = ndp->rgr.gmax;
#     int     N = gmax-lbuf-ubuf;

#     sprintf(fn,"./output/u%s_step%d.silo",ndp->par.output_fn,ndp->step);
testname = "testout"
stepnum = 1
fn = joinpath(dirname(@__FILE__), @sprintf "u%s_step%d.silo" testname stepnum)
#     dbfile = DBCreate(fn, DB_CLOBBER, DB_LOCAL, "Line Output", DB_PDB);
dbfile = Silo.DBCreate(fn, Silo.DB_CLOBBER, Silo.DB_LOCAL, "Line Output", Silo.DB_PDB)

#     sprintf(title,"time: %lf",ndp->time);
#     DBAddOption(dbopt, DBOPT_LABEL, &title);
title = @sprintf "time: %lf" 1e-4
Silo.DBAddOption(dbopt, Silo.DBOPT_LABEL, pointer_from_objref(title))

# Test data
N = 20
x = collect(range(0,stop=1,length=N))
y1 = collect(range(4,stop=5,length=N))
y2 = collect(range(10,stop=11,length=N))
y3 = y1 - y2

#     DBPutCurve(dbfile,"Numerical_Solution",x,y1,DB_FLOAT,N+1,NULL);
Silo.DBPutCurve(dbfile, "Numerical_Solution", x, y1, Silo.DB_FLOAT, N + 1, dbopt) # or C_NULL
#     DBPutCurve(dbfile,"Analytical_Solution",x,y2,DB_FLOAT,N+1,NULL);
Silo.DBPutCurve(dbfile, "Analytical_Solution", x, y2, Silo.DB_FLOAT, N + 1, dbopt)
#     DBPutCurve(dbfile,"Error",x,y3,DB_FLOAT,N+1,NULL);
Silo.DBPutCurve(dbfile, "Error", x, y1, Silo.DB_FLOAT, N + 1, dbopt)
#     DBClose(dbfile);
Silo.DBClose(dbfile)

# 	DBFreeOptlist(dbopt);
Silo.DBFreeOptlist(dbopt)

@test Silo.is_silofile(fn)

# contnames = names(fn)
# @test issubset(["Numerical_Solution", "Analytical_Solution", "Error"],
#                contnames)
