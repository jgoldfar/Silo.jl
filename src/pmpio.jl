# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Silo/gen/../deps/usr/include/pmpio.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


# function signal(arg1::Cint,arg2,arg3::Nothing)
#     ccall((:signal,libsilo),Ptr{Nothing},(Cint,Ptr{Nothing},Nothing),arg1,arg2,arg3)
# end
#
# function getpriority(arg1::Cint,arg2::id_t)
#     ccall((:getpriority,libsilo),Cint,(Cint,id_t),arg1,arg2)
# end
#
# function getiopolicy_np(arg1::Cint,arg2::Cint)
#     ccall((:getiopolicy_np,libsilo),Cint,(Cint,Cint),arg1,arg2)
# end
#
# function getrlimit(arg1::Cint,arg2)
#     ccall((:getrlimit,libsilo),Cint,(Cint,Ptr{Nothing}),arg1,arg2)
# end
#
# function getrusage(arg1::Cint,arg2)
#     ccall((:getrusage,libsilo),Cint,(Cint,Ptr{Nothing}),arg1,arg2)
# end
#
# function setpriority(arg1::Cint,arg2::id_t,arg3::Cint)
#     ccall((:setpriority,libsilo),Cint,(Cint,id_t,Cint),arg1,arg2,arg3)
# end
#
# function setiopolicy_np(arg1::Cint,arg2::Cint,arg3::Cint)
#     ccall((:setiopolicy_np,libsilo),Cint,(Cint,Cint,Cint),arg1,arg2,arg3)
# end
#
# function setrlimit(arg1::Cint,arg2)
#     ccall((:setrlimit,libsilo),Cint,(Cint,Ptr{Nothing}),arg1,arg2)
# end
#
# function _OSSwapInt16(_data::__uint16_t)
#     ccall((:_OSSwapInt16,libsilo),__uint16_t,(__uint16_t,),_data)
# end
#
# function _OSSwapInt32(_data::__uint32_t)
#     ccall((:_OSSwapInt32,libsilo),__uint32_t,(__uint32_t,),_data)
# end
#
# function _OSSwapInt64(_data::__uint64_t)
#     ccall((:_OSSwapInt64,libsilo),__uint64_t,(__uint64_t,),_data)
# end
#
# function wait(arg1)
#     ccall((:wait,libsilo),pid_t,(Ptr{Cint},),arg1)
# end
#
# function waitpid(arg1::pid_t,arg2,arg3::Cint)
#     ccall((:waitpid,libsilo),pid_t,(pid_t,Ptr{Cint},Cint),arg1,arg2,arg3)
# end
#
# function waitid(arg1::idtype_t,arg2::id_t,arg3,arg4::Cint)
#     ccall((:waitid,libsilo),Cint,(idtype_t,id_t,Ptr{siginfo_t},Cint),arg1,arg2,arg3,arg4)
# end
#
# function wait3(arg1,arg2::Cint,arg3)
#     ccall((:wait3,libsilo),pid_t,(Ptr{Cint},Cint,Ptr{Nothing}),arg1,arg2,arg3)
# end
#
# function wait4(arg1::pid_t,arg2,arg3::Cint,arg4)
#     ccall((:wait4,libsilo),pid_t,(pid_t,Ptr{Cint},Cint,Ptr{Nothing}),arg1,arg2,arg3,arg4)
# end
#
# function alloca(arg1::Culong)
#     ccall((:alloca,libsilo),Ptr{Nothing},(Culong,),arg1)
# end
#
# function abort()
#     ccall((:abort,libsilo),Nothing,())
# end
#
# function abs(arg1::Cint)
#     ccall((:abs,libsilo),Cint,(Cint,),arg1)
# end
#
# function atexit(arg1)
#     ccall((:atexit,libsilo),Cint,(Ptr{Nothing},),arg1)
# end
#
# function atof(arg1)
#     ccall((:atof,libsilo),Cdouble,(Cstring,),arg1)
# end
#
# function atoi(arg1)
#     ccall((:atoi,libsilo),Cint,(Cstring,),arg1)
# end
#
# function atol(arg1)
#     ccall((:atol,libsilo),Clong,(Cstring,),arg1)
# end
#
# function atoll(arg1)
#     ccall((:atoll,libsilo),Clonglong,(Cstring,),arg1)
# end
#
# function bsearch(__key,__base,__nel::Csize_t,__width::Csize_t,__compar)
#     ccall((:bsearch,libsilo),Ptr{Nothing},(Ptr{Nothing},Ptr{Nothing},Csize_t,Csize_t,Ptr{Nothing}),__key,__base,__nel,__width,__compar)
# end
#
# function calloc(__count::Culong,__size::Culong)
#     ccall((:calloc,libsilo),Ptr{Nothing},(Culong,Culong),__count,__size)
# end
#
# function div(arg1::Cint,arg2::Cint)
#     ccall((:div,libsilo),div_t,(Cint,Cint),arg1,arg2)
# end
#
# function exit(arg1::Cint)
#     ccall((:exit,libsilo),Nothing,(Cint,),arg1)
# end
#
# function free(arg1)
#     ccall((:free,libsilo),Nothing,(Ptr{Nothing},),arg1)
# end
#
# function getenv(arg1)
#     ccall((:getenv,libsilo),Cstring,(Cstring,),arg1)
# end
#
# function labs(arg1::Clong)
#     ccall((:labs,libsilo),Clong,(Clong,),arg1)
# end
#
# function ldiv(arg1::Clong,arg2::Clong)
#     ccall((:ldiv,libsilo),ldiv_t,(Clong,Clong),arg1,arg2)
# end
#
# function llabs(arg1::Clonglong)
#     ccall((:llabs,libsilo),Clonglong,(Clonglong,),arg1)
# end
#
# function lldiv(arg1::Clonglong,arg2::Clonglong)
#     ccall((:lldiv,libsilo),lldiv_t,(Clonglong,Clonglong),arg1,arg2)
# end
#
# function malloc(__size::Culong)
#     ccall((:malloc,libsilo),Ptr{Nothing},(Culong,),__size)
# end
#
# function mblen(__s,__n::Csize_t)
#     ccall((:mblen,libsilo),Cint,(Cstring,Csize_t),__s,__n)
# end
#
# function mbstowcs(arg1,arg2,arg3::Csize_t)
#     ccall((:mbstowcs,libsilo),Csize_t,(Ptr{wchar_t},Cstring,Csize_t),arg1,arg2,arg3)
# end
#
# function mbtowc(arg1,arg2,arg3::Csize_t)
#     ccall((:mbtowc,libsilo),Cint,(Ptr{wchar_t},Cstring,Csize_t),arg1,arg2,arg3)
# end
#
# function posix_memalign(__memptr,__alignment::Csize_t,__size::Csize_t)
#     ccall((:posix_memalign,libsilo),Cint,(Ptr{Ptr{Nothing}},Csize_t,Csize_t),__memptr,__alignment,__size)
# end
#
# function qsort(__base,__nel::Csize_t,__width::Csize_t,__compar)
#     ccall((:qsort,libsilo),Nothing,(Ptr{Nothing},Csize_t,Csize_t,Ptr{Nothing}),__base,__nel,__width,__compar)
# end
#
# function rand()
#     ccall((:rand,libsilo),Cint,())
# end
#
# function realloc(__ptr,__size::Culong)
#     ccall((:realloc,libsilo),Ptr{Nothing},(Ptr{Nothing},Culong),__ptr,__size)
# end
#
# function srand(arg1::UInt32)
#     ccall((:srand,libsilo),Nothing,(UInt32,),arg1)
# end
#
# function strtod(arg1,arg2)
#     ccall((:strtod,libsilo),Cdouble,(Cstring,Ptr{Cstring}),arg1,arg2)
# end
#
# function strtof(arg1,arg2)
#     ccall((:strtof,libsilo),Cfloat,(Cstring,Ptr{Cstring}),arg1,arg2)
# end
#
# function strtol(__str,__endptr,__base::Cint)
#     ccall((:strtol,libsilo),Clong,(Cstring,Ptr{Cstring},Cint),__str,__endptr,__base)
# end
#
# function strtold(arg1,arg2)
#     ccall((:strtold,libsilo),Float64,(Cstring,Ptr{Cstring}),arg1,arg2)
# end
#
# function strtoll(__str,__endptr,__base::Cint)
#     ccall((:strtoll,libsilo),Clonglong,(Cstring,Ptr{Cstring},Cint),__str,__endptr,__base)
# end
#
# function strtoul(__str,__endptr,__base::Cint)
#     ccall((:strtoul,libsilo),Culong,(Cstring,Ptr{Cstring},Cint),__str,__endptr,__base)
# end
#
# function strtoull(__str,__endptr,__base::Cint)
#     ccall((:strtoull,libsilo),Culonglong,(Cstring,Ptr{Cstring},Cint),__str,__endptr,__base)
# end
#
# function system(arg1)
#     ccall((:system,libsilo),Cint,(Cstring,),arg1)
# end
#
# function wcstombs(arg1,arg2,arg3::Csize_t)
#     ccall((:wcstombs,libsilo),Csize_t,(Cstring,Ptr{wchar_t},Csize_t),arg1,arg2,arg3)
# end
#
# function wctomb(arg1,arg2::wchar_t)
#     ccall((:wctomb,libsilo),Cint,(Cstring,wchar_t),arg1,arg2)
# end
#
# function _Exit(arg1::Cint)
#     ccall((:_Exit,libsilo),Nothing,(Cint,),arg1)
# end
#
# function a64l(arg1)
#     ccall((:a64l,libsilo),Clong,(Cstring,),arg1)
# end
#
# function drand48()
#     ccall((:drand48,libsilo),Cdouble,())
# end
#
# function ecvt(arg1::Cdouble,arg2::Cint,arg3,arg4)
#     ccall((:ecvt,libsilo),Cstring,(Cdouble,Cint,Ptr{Cint},Ptr{Cint}),arg1,arg2,arg3,arg4)
# end
#
# function erand48(arg1::NTuple{3,UInt16})
#     ccall((:erand48,libsilo),Cdouble,(NTuple{3,UInt16},),arg1)
# end
#
# function fcvt(arg1::Cdouble,arg2::Cint,arg3,arg4)
#     ccall((:fcvt,libsilo),Cstring,(Cdouble,Cint,Ptr{Cint},Ptr{Cint}),arg1,arg2,arg3,arg4)
# end
#
# function gcvt(arg1::Cdouble,arg2::Cint,arg3)
#     ccall((:gcvt,libsilo),Cstring,(Cdouble,Cint,Cstring),arg1,arg2,arg3)
# end
#
# function getsubopt(arg1,arg2,arg3)
#     ccall((:getsubopt,libsilo),Cint,(Ptr{Cstring},Ptr{Cstring},Ptr{Cstring}),arg1,arg2,arg3)
# end
#
# function grantpt(arg1::Cint)
#     ccall((:grantpt,libsilo),Cint,(Cint,),arg1)
# end
#
# function initstate(arg1::UInt32,arg2,arg3::Csize_t)
#     ccall((:initstate,libsilo),Cstring,(UInt32,Cstring,Csize_t),arg1,arg2,arg3)
# end
#
# function jrand48(arg1::NTuple{3,UInt16})
#     ccall((:jrand48,libsilo),Clong,(NTuple{3,UInt16},),arg1)
# end
#
# function l64a(arg1::Clong)
#     ccall((:l64a,libsilo),Cstring,(Clong,),arg1)
# end
#
# function lcong48(arg1::NTuple{7,UInt16})
#     ccall((:lcong48,libsilo),Nothing,(NTuple{7,UInt16},),arg1)
# end
#
# function lrand48()
#     ccall((:lrand48,libsilo),Clong,())
# end
#
# function mktemp(arg1)
#     ccall((:mktemp,libsilo),Cstring,(Cstring,),arg1)
# end
#
# function mkstemp(arg1)
#     ccall((:mkstemp,libsilo),Cint,(Cstring,),arg1)
# end
#
# function mrand48()
#     ccall((:mrand48,libsilo),Clong,())
# end
#
# function nrand48(arg1::NTuple{3,UInt16})
#     ccall((:nrand48,libsilo),Clong,(NTuple{3,UInt16},),arg1)
# end
#
# function posix_openpt(arg1::Cint)
#     ccall((:posix_openpt,libsilo),Cint,(Cint,),arg1)
# end
#
# function ptsname(arg1::Cint)
#     ccall((:ptsname,libsilo),Cstring,(Cint,),arg1)
# end
#
# function putenv(arg1)
#     ccall((:putenv,libsilo),Cint,(Cstring,),arg1)
# end
#
# function random()
#     ccall((:random,libsilo),Clong,())
# end
#
# function rand_r(arg1)
#     ccall((:rand_r,libsilo),Cint,(Ptr{UInt32},),arg1)
# end
#
# function realpath(arg1,arg2)
#     ccall((:realpath,libsilo),Cstring,(Cstring,Cstring),arg1,arg2)
# end
#
# function seed48(arg1::NTuple{3,UInt16})
#     ccall((:seed48,libsilo),Ptr{UInt16},(NTuple{3,UInt16},),arg1)
# end
#
# function setenv(__name,__value,__overwrite::Cint)
#     ccall((:setenv,libsilo),Cint,(Cstring,Cstring,Cint),__name,__value,__overwrite)
# end
#
# function setkey(arg1)
#     ccall((:setkey,libsilo),Nothing,(Cstring,),arg1)
# end
#
# function setstate(arg1)
#     ccall((:setstate,libsilo),Cstring,(Cstring,),arg1)
# end
#
# function srand48(arg1::Clong)
#     ccall((:srand48,libsilo),Nothing,(Clong,),arg1)
# end
#
# function srandom(arg1::UInt32)
#     ccall((:srandom,libsilo),Nothing,(UInt32,),arg1)
# end
#
# function unlockpt(arg1::Cint)
#     ccall((:unlockpt,libsilo),Cint,(Cint,),arg1)
# end
#
# function unsetenv(arg1)
#     ccall((:unsetenv,libsilo),Cint,(Cstring,),arg1)
# end
#
# function arc4random()
#     ccall((:arc4random,libsilo),UInt32,())
# end
#
# function arc4random_addrandom(arg1,arg2::Cint)
#     ccall((:arc4random_addrandom,libsilo),Nothing,(Ptr{Cuchar},Cint),arg1,arg2)
# end
#
# function arc4random_buf(__buf,__nbytes::Csize_t)
#     ccall((:arc4random_buf,libsilo),Nothing,(Ptr{Nothing},Csize_t),__buf,__nbytes)
# end
#
# function arc4random_stir()
#     ccall((:arc4random_stir,libsilo),Nothing,())
# end
#
# function arc4random_uniform(__upper_bound::UInt32)
#     ccall((:arc4random_uniform,libsilo),UInt32,(UInt32,),__upper_bound)
# end
#
# function atexit_b(arg1::Nothing)
#     ccall((:atexit_b,libsilo),Cint,(Nothing,),arg1)
# end
#
# function bsearch_b(__key,__base,__nel::Csize_t,__width::Csize_t,__compar::Nothing)
#     ccall((:bsearch_b,libsilo),Ptr{Nothing},(Ptr{Nothing},Ptr{Nothing},Csize_t,Csize_t,Nothing),__key,__base,__nel,__width,__compar)
# end
#
# function cgetcap(arg1,arg2,arg3::Cint)
#     ccall((:cgetcap,libsilo),Cstring,(Cstring,Cstring,Cint),arg1,arg2,arg3)
# end
#
# function cgetclose()
#     ccall((:cgetclose,libsilo),Cint,())
# end
#
# function cgetent(arg1,arg2,arg3)
#     ccall((:cgetent,libsilo),Cint,(Ptr{Cstring},Ptr{Cstring},Cstring),arg1,arg2,arg3)
# end
#
# function cgetfirst(arg1,arg2)
#     ccall((:cgetfirst,libsilo),Cint,(Ptr{Cstring},Ptr{Cstring}),arg1,arg2)
# end
#
# function cgetmatch(arg1,arg2)
#     ccall((:cgetmatch,libsilo),Cint,(Cstring,Cstring),arg1,arg2)
# end
#
# function cgetnext(arg1,arg2)
#     ccall((:cgetnext,libsilo),Cint,(Ptr{Cstring},Ptr{Cstring}),arg1,arg2)
# end
#
# function cgetnum(arg1,arg2,arg3)
#     ccall((:cgetnum,libsilo),Cint,(Cstring,Cstring,Ptr{Clong}),arg1,arg2,arg3)
# end
#
# function cgetset(arg1)
#     ccall((:cgetset,libsilo),Cint,(Cstring,),arg1)
# end
#
# function cgetstr(arg1,arg2,arg3)
#     ccall((:cgetstr,libsilo),Cint,(Cstring,Cstring,Ptr{Cstring}),arg1,arg2,arg3)
# end
#
# function cgetustr(arg1,arg2,arg3)
#     ccall((:cgetustr,libsilo),Cint,(Cstring,Cstring,Ptr{Cstring}),arg1,arg2,arg3)
# end
#
# function daemon(arg1::Cint,arg2::Cint)
#     ccall((:daemon,libsilo),Cint,(Cint,Cint),arg1,arg2)
# end
#
# function devname(arg1::dev_t,arg2::mode_t)
#     ccall((:devname,libsilo),Cstring,(dev_t,mode_t),arg1,arg2)
# end
#
# function devname_r(arg1::dev_t,arg2::mode_t,buf,len::Cint)
#     ccall((:devname_r,libsilo),Cstring,(dev_t,mode_t,Cstring,Cint),arg1,arg2,buf,len)
# end
#
# function getbsize(arg1,arg2)
#     ccall((:getbsize,libsilo),Cstring,(Ptr{Cint},Ptr{Clong}),arg1,arg2)
# end
#
# function getloadavg(arg1,arg2::Cint)
#     ccall((:getloadavg,libsilo),Cint,(Ptr{Cdouble},Cint),arg1,arg2)
# end
#
# function getprogname()
#     ccall((:getprogname,libsilo),Cstring,())
# end
#
# function heapsort(__base,__nel::Csize_t,__width::Csize_t,__compar)
#     ccall((:heapsort,libsilo),Cint,(Ptr{Nothing},Csize_t,Csize_t,Ptr{Nothing}),__base,__nel,__width,__compar)
# end
#
# function heapsort_b(__base,__nel::Csize_t,__width::Csize_t,__compar::Nothing)
#     ccall((:heapsort_b,libsilo),Cint,(Ptr{Nothing},Csize_t,Csize_t,Nothing),__base,__nel,__width,__compar)
# end
#
# function mergesort(__base,__nel::Csize_t,__width::Csize_t,__compar)
#     ccall((:mergesort,libsilo),Cint,(Ptr{Nothing},Csize_t,Csize_t,Ptr{Nothing}),__base,__nel,__width,__compar)
# end
#
# function mergesort_b(__base,__nel::Csize_t,__width::Csize_t,__compar::Nothing)
#     ccall((:mergesort_b,libsilo),Cint,(Ptr{Nothing},Csize_t,Csize_t,Nothing),__base,__nel,__width,__compar)
# end
#
# function psort(__base,__nel::Csize_t,__width::Csize_t,__compar)
#     ccall((:psort,libsilo),Nothing,(Ptr{Nothing},Csize_t,Csize_t,Ptr{Nothing}),__base,__nel,__width,__compar)
# end
#
# function psort_b(__base,__nel::Csize_t,__width::Csize_t,__compar::Nothing)
#     ccall((:psort_b,libsilo),Nothing,(Ptr{Nothing},Csize_t,Csize_t,Nothing),__base,__nel,__width,__compar)
# end
#
# function psort_r(__base,__nel::Csize_t,__width::Csize_t,arg1,__compar)
#     ccall((:psort_r,libsilo),Nothing,(Ptr{Nothing},Csize_t,Csize_t,Ptr{Nothing},Ptr{Nothing}),__base,__nel,__width,arg1,__compar)
# end
#
# function qsort_b(__base,__nel::Csize_t,__width::Csize_t,__compar::Nothing)
#     ccall((:qsort_b,libsilo),Nothing,(Ptr{Nothing},Csize_t,Csize_t,Nothing),__base,__nel,__width,__compar)
# end
#
# function qsort_r(__base,__nel::Csize_t,__width::Csize_t,arg1,__compar)
#     ccall((:qsort_r,libsilo),Nothing,(Ptr{Nothing},Csize_t,Csize_t,Ptr{Nothing},Ptr{Nothing}),__base,__nel,__width,arg1,__compar)
# end
#
# function radixsort(__base,__nel::Cint,__table,__endbyte::UInt32)
#     ccall((:radixsort,libsilo),Cint,(Ptr{Ptr{Cuchar}},Cint,Ptr{Cuchar},UInt32),__base,__nel,__table,__endbyte)
# end
#
# function setprogname(arg1)
#     ccall((:setprogname,libsilo),Nothing,(Cstring,),arg1)
# end
#
# function sradixsort(__base,__nel::Cint,__table,__endbyte::UInt32)
#     ccall((:sradixsort,libsilo),Cint,(Ptr{Ptr{Cuchar}},Cint,Ptr{Cuchar},UInt32),__base,__nel,__table,__endbyte)
# end
#
# function sranddev()
#     ccall((:sranddev,libsilo),Nothing,())
# end
#
# function srandomdev()
#     ccall((:srandomdev,libsilo),Nothing,())
# end
#
# function reallocf(__ptr,__size::Csize_t)
#     ccall((:reallocf,libsilo),Ptr{Nothing},(Ptr{Nothing},Csize_t),__ptr,__size)
# end
#
# function strtoq(__str,__endptr,__base::Cint)
#     ccall((:strtoq,libsilo),Clonglong,(Cstring,Ptr{Cstring},Cint),__str,__endptr,__base)
# end
#
# function strtouq(__str,__endptr,__base::Cint)
#     ccall((:strtouq,libsilo),Culonglong,(Cstring,Ptr{Cstring},Cint),__str,__endptr,__base)
# end
#
# function valloc(arg1::Csize_t)
#     ccall((:valloc,libsilo),Ptr{Nothing},(Csize_t,),arg1)
# end

function PMPIO_Init(numFiles::Cint,ioMode::PMPIO_iomode_t,mpiComm::Cint,mpiTag::Cint,createCb::PMPIO_CreateFileCallBack,openCb::PMPIO_OpenFileCallBack,closeCb::PMPIO_CloseFileCallBack,userData)
    ccall((:PMPIO_Init,libsilo),Ptr{PMPIO_baton_t},(Cint,PMPIO_iomode_t,Cint,Cint,PMPIO_CreateFileCallBack,PMPIO_OpenFileCallBack,PMPIO_CloseFileCallBack,Ptr{Nothing}),numFiles,ioMode,mpiComm,mpiTag,createCb,openCb,closeCb,userData)
end

function PMPIO_Finish(bat)
    ccall((:PMPIO_Finish,libsilo),Nothing,(Ptr{PMPIO_baton_t},),bat)
end

function PMPIO_WaitForBaton(Bat,fname,nsname)
    ccall((:PMPIO_WaitForBaton,libsilo),Ptr{Nothing},(Ptr{PMPIO_baton_t},Cstring,Cstring),Bat,fname,nsname)
end

function PMPIO_HandOffBaton(Bat,file)
    ccall((:PMPIO_HandOffBaton,libsilo),Nothing,(Ptr{PMPIO_baton_t},Ptr{Nothing}),Bat,file)
end

function PMPIO_GroupRank(Bat,rankInComm::Cint)
    ccall((:PMPIO_GroupRank,libsilo),Cint,(Ptr{PMPIO_baton_t},Cint),Bat,rankInComm)
end

function PMPIO_RankInGroup(Bat,rankInComm::Cint)
    ccall((:PMPIO_RankInGroup,libsilo),Cint,(Ptr{PMPIO_baton_t},Cint),Bat,rankInComm)
end
