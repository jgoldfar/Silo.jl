# Silo.jl: Wrapper around the Silo library (https://wci.llnl.gov/simulation/computer-codes/silo)
module Silo
if isfile(joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl"))
    include(joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl"))
else
    error("Silo not properly installed. Please run Pkg.build(\"Silo\")")
end


# DBfile       *dbfile = NULL;
#     DBoptlist	*dbopt = DBMakeOptlist(1);
#     char         fn[100], title[100];
#     int     lbuf = ndp->rgr.lbuf;
#     int     ubuf = ndp->rgr.ubuf;
#     int     gmax = ndp->rgr.gmax;
#     int     N = gmax-lbuf-ubuf;

#     sprintf(fn,"./output/u%s_step%d.silo",ndp->par.output_fn,ndp->step);
#     dbfile = DBCreate(fn, DB_CLOBBER, DB_LOCAL, "Line Output", DB_PDB);

#     sprintf(title,"time: %lf",ndp->time);
#     DBAddOption(dbopt, DBOPT_LABEL, &title);
#     DBPutCurve(dbfile,"Numerical_Solution",x,y1,DB_FLOAT,N+1,NULL);
#     DBPutCurve(dbfile,"Analytical_Solution",x,y2,DB_FLOAT,N+1,NULL);
#     DBPutCurve(dbfile,"Error",x,y3,DB_FLOAT,N+1,NULL);
#     DBClose(dbfile);

# 	DBFreeOptlist(dbopt);

end # module
