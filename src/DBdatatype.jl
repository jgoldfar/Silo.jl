module DBdatatype # Note: correspondence here is complicated by platform issues.
# See http://julia.readthedocs.org/en/release-0.3/manual/calling-c-and-fortran-code/
using Compat

const DB_INT = 16
const DB_SHORT = 17
const DB_LONG = 18
const DB_FLOAT = 19
const DB_DOUBLE = 20
const DB_CHAR = 21
const DB_LONG_LONG = 22
const DB_NOTYPE = 25           #=unknown type =#

const JuliaSilotypemap= @compat Dict(Int64 => DB_LONG_LONG, Int32 => DB_INT, Int16 =>DB_SHORT, Int8=>DB_CHAR, Float32 => DB_FLOAT, Float64 => DB_DOUBLE)
# const CJuliaSilotypemap=[Clonglong => DB_LONG_LONG, Cint => DB_INT, Cshort =>DB_SHORT, Cchar=>DB_CHAR, Cfloat => DB_FLOAT, Cdouble => DB_DOUBLE]
const SiloJuliatypemap = @compat Dict(DB_LONG_LONG => Int64, DB_INT=> Int32, DB_SHORT=>Int16, DB_CHAR=>Int8, DB_FLOAT=>Float32, DB_DOUBLE=>Float64 )
# const SiloCJuliatypemap=[DB_LONG_LONG => Clonglong, DB_INT=> Cint, DB_SHORT=>Cshort , DB_CHAR=>Cchar, Cfloat => DB_FLOAT, DB_DOUBLE=>Cdouble]

end #module