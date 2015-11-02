# Julia wrapper for header: /home/jgoldfar/Documents/work/projects/Silo.jl/deps/usr/include/silo.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function DBOpenReal(arg1::Ptr{UInt8},arg2::Cint,arg3::Cint)
  ccall((:DBOpenReal,libsilo),Ptr{DBfile},(Ptr{UInt8},Cint,Cint),arg1,arg2,arg3)
end
function DBOpen{T1<:AbstractString}(name::T1, target::Int, mode::Int)
  ccall((:DBOpenReal,libsilo),Ptr{DBfile},(Ptr{UInt8},Cint,Cint),name,target,mode)
end

function DBCreateReal(arg1::Ptr{UInt8},arg2::Cint,arg3::Cint,arg4::Ptr{UInt8},arg5::Cint)
  ccall((:DBCreateReal,libsilo),Ptr{DBfile},(Ptr{UInt8},Cint,Cint,Ptr{UInt8},Cint),arg1,arg2,arg3,arg4,arg5)
end
function DBCreate(name::AbstractString, mode::Int, target::Int, info::AbstractString, dtype::Int)
  ccall((:DBCreateReal,libsilo),Ptr{DBfile},(Ptr{UInt8},Cint,Cint,Ptr{UInt8},Cint),name,mode,target,info,dtype)
end

function DBInqFileReal(arg1::Ptr{UInt8})
  ccall((:DBInqFileReal,libsilo),Cint,(Ptr{UInt8},),arg1)
end
function DBInqFile(name::AbstractString)
  ccall((:DBInqFileReal,libsilo),Cint,(Ptr{UInt8},),name)
end

function DBAllocCompoundarray()
  ccall((:DBAllocCompoundarray,libsilo),Ptr{DBcompoundarray},())
end

function DBAllocCurve()
  ccall((:DBAllocCurve,libsilo),Ptr{DBcurve},())
end

function DBAllocDefvars(arg1::Cint)
  ccall((:DBAllocDefvars,libsilo),Ptr{DBdefvars},(Cint,),arg1)
end

function DBAllocMultimesh(arg1::Cint)
  ccall((:DBAllocMultimesh,libsilo),Ptr{DBmultimesh},(Cint,),arg1)
end

function DBAllocMultimeshadj(arg1::Cint)
  ccall((:DBAllocMultimeshadj,libsilo),Ptr{DBmultimeshadj},(Cint,),arg1)
end

function DBAllocMultivar(arg1::Cint)
  ccall((:DBAllocMultivar,libsilo),Ptr{DBmultivar},(Cint,),arg1)
end

function DBAllocMultimat(arg1::Cint)
  ccall((:DBAllocMultimat,libsilo),Ptr{DBmultimat},(Cint,),arg1)
end

function DBAllocMultimatspecies(arg1::Cint)
  ccall((:DBAllocMultimatspecies,libsilo),Ptr{DBmultimatspecies},(Cint,),arg1)
end

function DBAllocCsgmesh()
  ccall((:DBAllocCsgmesh,libsilo),Ptr{DBcsgmesh},())
end

function DBAllocQuadmesh()
  ccall((:DBAllocQuadmesh,libsilo),Ptr{DBquadmesh},())
end

function DBAllocPointmesh()
  ccall((:DBAllocPointmesh,libsilo),Ptr{DBpointmesh},())
end

function DBAllocMeshvar()
  ccall((:DBAllocMeshvar,libsilo),Ptr{DBmeshvar},())
end

function DBAllocUcdmesh()
  ccall((:DBAllocUcdmesh,libsilo),Ptr{DBucdmesh},())
end

function DBAllocCsgvar()
  ccall((:DBAllocCsgvar,libsilo),Ptr{DBcsgvar},())
end

function DBAllocQuadvar()
  ccall((:DBAllocQuadvar,libsilo),Ptr{DBquadvar},())
end

function DBAllocUcdvar()
  ccall((:DBAllocUcdvar,libsilo),Ptr{DBucdvar},())
end

function DBAllocZonelist()
  ccall((:DBAllocZonelist,libsilo),Ptr{DBzonelist},())
end

function DBAllocPHZonelist()
  ccall((:DBAllocPHZonelist,libsilo),Ptr{DBphzonelist},())
end

function DBAllocCSGZonelist()
  ccall((:DBAllocCSGZonelist,libsilo),Ptr{DBcsgzonelist},())
end

function DBAllocEdgelist()
  ccall((:DBAllocEdgelist,libsilo),Ptr{DBedgelist},())
end

function DBAllocFacelist()
  ccall((:DBAllocFacelist,libsilo),Ptr{DBfacelist},())
end

function DBAllocMaterial()
  ccall((:DBAllocMaterial,libsilo),Ptr{DBmaterial},())
end

function DBAllocMatspecies()
  ccall((:DBAllocMatspecies,libsilo),Ptr{DBmatspecies},())
end

function DBAllocNamescheme()
  ccall((:DBAllocNamescheme,libsilo),Ptr{DBnamescheme},())
end

function DBAllocGroupelmap(arg1::Cint,arg2::Cint)
  ccall((:DBAllocGroupelmap,libsilo),Ptr{DBgroupelmap},(Cint,Cint),arg1,arg2)
end

function DBFreeMatspecies(arg1::Ptr{DBmatspecies})
  ccall((:DBFreeMatspecies,libsilo),Void,(Ptr{DBmatspecies},),arg1)
end

function DBFreeMaterial(arg1::Ptr{DBmaterial})
  ccall((:DBFreeMaterial,libsilo),Void,(Ptr{DBmaterial},),arg1)
end

function DBFreeFacelist(arg1::Ptr{DBfacelist})
  ccall((:DBFreeFacelist,libsilo),Void,(Ptr{DBfacelist},),arg1)
end

function DBFreeEdgelist(arg1::Ptr{DBedgelist})
  ccall((:DBFreeEdgelist,libsilo),Void,(Ptr{DBedgelist},),arg1)
end

function DBFreeZonelist(arg1::Ptr{DBzonelist})
  ccall((:DBFreeZonelist,libsilo),Void,(Ptr{DBzonelist},),arg1)
end

function DBFreePHZonelist(arg1::Ptr{DBphzonelist})
  ccall((:DBFreePHZonelist,libsilo),Void,(Ptr{DBphzonelist},),arg1)
end

function DBFreeCSGZonelist(arg1::Ptr{DBcsgzonelist})
  ccall((:DBFreeCSGZonelist,libsilo),Void,(Ptr{DBcsgzonelist},),arg1)
end

function DBResetUcdvar(arg1::Ptr{DBucdvar})
  ccall((:DBResetUcdvar,libsilo),Void,(Ptr{DBucdvar},),arg1)
end

function DBFreeUcdvar(arg1::Ptr{DBucdvar})
  ccall((:DBFreeUcdvar,libsilo),Void,(Ptr{DBucdvar},),arg1)
end

function DBResetQuadvar(arg1::Ptr{DBquadvar})
  ccall((:DBResetQuadvar,libsilo),Void,(Ptr{DBquadvar},),arg1)
end

function DBFreeCsgvar(arg1::Ptr{DBcsgvar})
  ccall((:DBFreeCsgvar,libsilo),Void,(Ptr{DBcsgvar},),arg1)
end

function DBFreeQuadvar(arg1::Ptr{DBquadvar})
  ccall((:DBFreeQuadvar,libsilo),Void,(Ptr{DBquadvar},),arg1)
end

function DBFreeUcdmesh(arg1::Ptr{DBucdmesh})
  ccall((:DBFreeUcdmesh,libsilo),Void,(Ptr{DBucdmesh},),arg1)
end

function DBFreeMeshvar(arg1::Ptr{DBmeshvar})
  ccall((:DBFreeMeshvar,libsilo),Void,(Ptr{DBmeshvar},),arg1)
end

function DBFreePointvar(arg1::Ptr{DBpointvar})
  ccall((:DBFreePointvar,libsilo),Void,(Ptr{DBpointvar},),arg1)
end

function DBFreePointmesh(arg1::Ptr{DBpointmesh})
  ccall((:DBFreePointmesh,libsilo),Void,(Ptr{DBpointmesh},),arg1)
end

function DBFreeQuadmesh(arg1::Ptr{DBquadmesh})
  ccall((:DBFreeQuadmesh,libsilo),Void,(Ptr{DBquadmesh},),arg1)
end

function DBFreeCsgmesh(arg1::Ptr{DBcsgmesh})
  ccall((:DBFreeCsgmesh,libsilo),Void,(Ptr{DBcsgmesh},),arg1)
end

function DBFreeDefvars(arg1::Ptr{DBdefvars})
  ccall((:DBFreeDefvars,libsilo),Void,(Ptr{DBdefvars},),arg1)
end

function DBFreeMultimesh(arg1::Ptr{DBmultimesh})
  ccall((:DBFreeMultimesh,libsilo),Void,(Ptr{DBmultimesh},),arg1)
end

function DBFreeMultimeshadj(arg1::Ptr{DBmultimeshadj})
  ccall((:DBFreeMultimeshadj,libsilo),Void,(Ptr{DBmultimeshadj},),arg1)
end

function DBFreeMultivar(arg1::Ptr{DBmultivar})
  ccall((:DBFreeMultivar,libsilo),Void,(Ptr{DBmultivar},),arg1)
end

function DBFreeMultimat(arg1::Ptr{DBmultimat})
  ccall((:DBFreeMultimat,libsilo),Void,(Ptr{DBmultimat},),arg1)
end

function DBFreeMultimatspecies(arg1::Ptr{DBmultimatspecies})
  ccall((:DBFreeMultimatspecies,libsilo),Void,(Ptr{DBmultimatspecies},),arg1)
end

function DBFreeCompoundarray(arg1::Ptr{DBcompoundarray})
  ccall((:DBFreeCompoundarray,libsilo),Void,(Ptr{DBcompoundarray},),arg1)
end

function DBFreeCurve(arg1::Ptr{DBcurve})
  ccall((:DBFreeCurve,libsilo),Void,(Ptr{DBcurve},),arg1)
end

function DBFreeNamescheme(arg1::Ptr{DBnamescheme})
  ccall((:DBFreeNamescheme,libsilo),Void,(Ptr{DBnamescheme},),arg1)
end

function DBIsEmptyCurve(curve::Ptr{DBcurve})
  ccall((:DBIsEmptyCurve,libsilo),Cint,(Ptr{DBcurve},),curve)
end

function DBIsEmptyPointmesh(msh::Ptr{DBpointmesh})
  ccall((:DBIsEmptyPointmesh,libsilo),Cint,(Ptr{DBpointmesh},),msh)
end

function DBIsEmptyPointvar(var::Ptr{DBpointvar})
  ccall((:DBIsEmptyPointvar,libsilo),Cint,(Ptr{DBpointvar},),var)
end

function DBIsEmptyMeshvar(var::Ptr{DBmeshvar})
  ccall((:DBIsEmptyMeshvar,libsilo),Cint,(Ptr{DBmeshvar},),var)
end

function DBIsEmptyQuadmesh(msh::Ptr{DBquadmesh})
  ccall((:DBIsEmptyQuadmesh,libsilo),Cint,(Ptr{DBquadmesh},),msh)
end

function DBIsEmptyQuadvar(var::Ptr{DBquadvar})
  ccall((:DBIsEmptyQuadvar,libsilo),Cint,(Ptr{DBquadvar},),var)
end

function DBIsEmptyUcdmesh(msh::Ptr{DBucdmesh})
  ccall((:DBIsEmptyUcdmesh,libsilo),Cint,(Ptr{DBucdmesh},),msh)
end

function DBIsEmptyFacelist(fl::Ptr{DBfacelist})
  ccall((:DBIsEmptyFacelist,libsilo),Cint,(Ptr{DBfacelist},),fl)
end

function DBIsEmptyZonelist(zl::Ptr{DBzonelist})
  ccall((:DBIsEmptyZonelist,libsilo),Cint,(Ptr{DBzonelist},),zl)
end

function DBIsEmptyPHZonelist(zl::Ptr{DBphzonelist})
  ccall((:DBIsEmptyPHZonelist,libsilo),Cint,(Ptr{DBphzonelist},),zl)
end

function DBIsEmptyUcdvar(var::Ptr{DBucdvar})
  ccall((:DBIsEmptyUcdvar,libsilo),Cint,(Ptr{DBucdvar},),var)
end

function DBIsEmptyCsgmesh(msh::Ptr{DBcsgmesh})
  ccall((:DBIsEmptyCsgmesh,libsilo),Cint,(Ptr{DBcsgmesh},),msh)
end

function DBIsEmptyCSGZonelist(zl::Ptr{DBcsgzonelist})
  ccall((:DBIsEmptyCSGZonelist,libsilo),Cint,(Ptr{DBcsgzonelist},),zl)
end

function DBIsEmptyCsgvar(var::Ptr{DBcsgvar})
  ccall((:DBIsEmptyCsgvar,libsilo),Cint,(Ptr{DBcsgvar},),var)
end

function DBIsEmptyMaterial(mat::Ptr{DBmaterial})
  ccall((:DBIsEmptyMaterial,libsilo),Cint,(Ptr{DBmaterial},),mat)
end

function DBIsEmptyMatspecies(spec::Ptr{DBmatspecies})
  ccall((:DBIsEmptyMatspecies,libsilo),Cint,(Ptr{DBmatspecies},),spec)
end

function DBSetDataReadMask(arg1::Clong)
  ccall((:DBSetDataReadMask,libsilo),Clong,(Clong,),arg1)
end

function DBGetDataReadMask()
  ccall((:DBGetDataReadMask,libsilo),Clong,())
end

function DBSetAllowOverwrites(allow::Cint)
  ccall((:DBSetAllowOverwrites,libsilo),Cint,(Cint,),allow)
end

function DBGetAllowOverwrites()
  ccall((:DBGetAllowOverwrites,libsilo),Cint,())
end

function DBSetAllowEmptyObjects(allow::Cint)
  ccall((:DBSetAllowEmptyObjects,libsilo),Cint,(Cint,),allow)
end

function DBGetAllowEmptyObjects()
  ccall((:DBGetAllowEmptyObjects,libsilo),Cint,())
end

function DBSetEnableChecksums(enable::Cint)
  ccall((:DBSetEnableChecksums,libsilo),Cint,(Cint,),enable)
end

function DBGetEnableChecksums()
  ccall((:DBGetEnableChecksums,libsilo),Cint,())
end

function DBSetCompression(arg1::Ptr{UInt8})
  ccall((:DBSetCompression,libsilo),Void,(Ptr{UInt8},),arg1)
end

function DBGetCompression()
  ccall((:DBGetCompression,libsilo),Ptr{UInt8},())
end

function DBSetFriendlyHDF5Names(enable::Cint)
  ccall((:DBSetFriendlyHDF5Names,libsilo),Cint,(Cint,),enable)
end

function DBGetFriendlyHDF5Names()
  ccall((:DBGetFriendlyHDF5Names,libsilo),Cint,())
end

function DBGuessHasFriendlyHDF5Names(f::Ptr{DBfile})
  ccall((:DBGuessHasFriendlyHDF5Names,libsilo),Cint,(Ptr{DBfile},),f)
end

function DBSetDeprecateWarnings(max::Cint)
  ccall((:DBSetDeprecateWarnings,libsilo),Cint,(Cint,),max)
end

function DBSetUnknownDriverPriorities(arg1::Ptr{Cint})
  ccall((:DBSetUnknownDriverPriorities,libsilo),Ptr{Cint},(Ptr{Cint},),arg1)
end

function DBRegisterFileOptionsSet(opts::Ptr{DBoptlist})
  ccall((:DBRegisterFileOptionsSet,libsilo),Cint,(Ptr{DBoptlist},),opts)
end

function DBUnregisterFileOptionsSet(opts_set_id::Cint)
  ccall((:DBUnregisterFileOptionsSet,libsilo),Cint,(Cint,),opts_set_id)
end

function DBGrabDriver(arg1::Ptr{DBfile})
  ccall((:DBGrabDriver,libsilo),Ptr{Void},(Ptr{DBfile},),arg1)
end

function DBUngrabDriver(arg1::Ptr{DBfile},arg2::Ptr{Void})
  ccall((:DBUngrabDriver,libsilo),Cint,(Ptr{DBfile},Ptr{Void}),arg1,arg2)
end

function DBGetDriverType(arg1::Ptr{DBfile})
  ccall((:DBGetDriverType,libsilo),Cint,(Ptr{DBfile},),arg1)
end

function DBGetDriverTypeFromPath(arg1::Ptr{UInt8})
  ccall((:DBGetDriverTypeFromPath,libsilo),Cint,(Ptr{UInt8},),arg1)
end

function DBJoinPath(arg1::Ptr{UInt8},arg2::Ptr{UInt8})
  ccall((:DBJoinPath,libsilo),Ptr{UInt8},(Ptr{UInt8},Ptr{UInt8}),arg1,arg2)
end

function DBVersion()
  ccall((:DBVersion,libsilo),Ptr{UInt8},())
end

function DBVersionGE(Maj::Cint,Min::Cint,Pat::Cint)
  ccall((:DBVersionGE,libsilo),Cint,(Cint,Cint,Cint),Maj,Min,Pat)
end

function DBFileVersion(dbfile::Ptr{DBfile})
  ccall((:DBFileVersion,libsilo),Ptr{UInt8},(Ptr{DBfile},),dbfile)
end

function DBFileVersionGE(dbfile::Ptr{DBfile},Maj::Cint,Min::Cint,Pat::Cint)
  ccall((:DBFileVersionGE,libsilo),Cint,(Ptr{DBfile},Cint,Cint,Cint),dbfile,Maj,Min,Pat)
end

warn("Function DBShowErrors not wrapped (requires wrapping typedef'd function type.)")
# function DBShowErrors(arg1::Cint,arg2::DBErrFunc_t)
#     ccall((:DBShowErrors,libsilo),Void,(Cint,DBErrFunc_t),arg1,arg2)
# end

function DBErrString()
  ccall((:DBErrString,libsilo),Ptr{UInt8},())
end

function DBErrFunc()
  ccall((:DBErrFunc,libsilo),Ptr{UInt8},())
end

function DBErrFuncname()
  ccall((:DBErrFuncname,libsilo),Ptr{UInt8},())
end

function DBErrfunc()
  ccall((:DBErrfunc,libsilo),DBErrFunc_t,())
end

function DBErrno()
  ccall((:DBErrno,libsilo),Cint,())
end

function DBErrlvl()
  ccall((:DBErrlvl,libsilo),Cint,())
end

function DBClose(arg1::Ptr{DBfile})
  ccall((:DBClose,libsilo),Cint,(Ptr{DBfile},),arg1)
end

function DBPause(arg1::Ptr{DBfile})
  ccall((:DBPause,libsilo),Cint,(Ptr{DBfile},),arg1)
end

function DBContinue(arg1::Ptr{DBfile})
  ccall((:DBContinue,libsilo),Cint,(Ptr{DBfile},),arg1)
end

function DBInqVarExists(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBInqVarExists,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBForceSingle(arg1::Cint)
  ccall((:DBForceSingle,libsilo),Cint,(Cint,),arg1)
end

function DBUninstall(arg1::Ptr{DBfile})
  ccall((:DBUninstall,libsilo),Cint,(Ptr{DBfile},),arg1)
end

function DBMakeOptlist(arg1::Cint)
  ccall((:DBMakeOptlist,libsilo),Ptr{DBoptlist},(Cint,),arg1)
end
function DBMakeOptlist(maxOpts::Int)
  ccall((:DBMakeOptlist,libsilo),Ptr{DBoptlist},(Cint,),maxOpts)
end

function DBClearOptlist(arg1::Ptr{DBoptlist})
  ccall((:DBClearOptlist,libsilo),Cint,(Ptr{DBoptlist},),arg1)
end

function DBFreeOptlist(arg1::Ptr{DBoptlist})
  ccall((:DBFreeOptlist,libsilo),Cint,(Ptr{DBoptlist},),arg1)
end

function DBAddOption(arg1::Ptr{DBoptlist},arg2::Cint,arg3::Ptr{Void})
  ccall((:DBAddOption,libsilo),Cint,(Ptr{DBoptlist},Cint,Ptr{Void}),arg1,arg2,arg3)
end
function DBAddOption(optlist::Ptr{DBoptlist},option_id::Int, value)
  v = [value]
  ccall((:DBAddOption,libsilo),Cint,(Ptr{DBoptlist},Cint,Ptr{Void}),optlist,option_id,v)
end

function DBGetOption(arg1::Ptr{DBoptlist},arg2::Cint)
  ccall((:DBGetOption,libsilo),Ptr{Void},(Ptr{DBoptlist},Cint),arg1,arg2)
end

function DBClearOption(arg1::Ptr{DBoptlist},arg2::Cint)
  ccall((:DBClearOption,libsilo),Cint,(Ptr{DBoptlist},Cint),arg1,arg2)
end

function DBGetToc(arg1::Ptr{DBfile})
  ccall((:DBGetToc,libsilo),Ptr{DBtoc},(Ptr{DBfile},),arg1)
end

function DBNewToc(arg1::Ptr{DBfile})
  ccall((:DBNewToc,libsilo),Cint,(Ptr{DBfile},),arg1)
end

function DBSortObjectsByOffset(arg1::Ptr{DBfile},nobjs::Cint,obj_names::Ptr{Ptr{UInt8}},ranks::Ptr{Cint})
  ccall((:DBSortObjectsByOffset,libsilo),Cint,(Ptr{DBfile},Cint,Ptr{Ptr{UInt8}},Ptr{Cint}),arg1,nobjs,obj_names,ranks)
end

warn("Function DBFilters not wrapped (requires stdio include parsing/FILE to be defined.)")
# function DBFilters(arg1::Ptr{DBfile},arg2::Ptr{FILE})
#     ccall((:DBFilters,libsilo),Cint,(Ptr{DBfile},Ptr{FILE}),arg1,arg2)
# end

function DBFilterRegistration(arg1::Ptr{UInt8},init::Ptr{Void},open::Ptr{Void})
  ccall((:DBFilterRegistration,libsilo),Cint,(Ptr{UInt8},Ptr{Void},Ptr{Void}),arg1,init,open)
end

function DBGetAtt(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8})
  ccall((:DBGetAtt,libsilo),Ptr{Void},(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8}),arg1,arg2,arg3)
end

function DBGetObject(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetObject,libsilo),Ptr{DBobject},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBChangeObject(arg1::Ptr{DBfile},arg2::Ptr{DBobject})
  ccall((:DBChangeObject,libsilo),Cint,(Ptr{DBfile},Ptr{DBobject}),arg1,arg2)
end

function DBWriteObject(arg1::Ptr{DBfile},arg2::Ptr{DBobject},arg3::Cint)
  ccall((:DBWriteObject,libsilo),Cint,(Ptr{DBfile},Ptr{DBobject},Cint),arg1,arg2,arg3)
end

function DBGetComponent(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8})
  ccall((:DBGetComponent,libsilo),Ptr{Void},(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8}),arg1,arg2,arg3)
end

function DBGetComponentType(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8})
  ccall((:DBGetComponentType,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8}),arg1,arg2,arg3)
end

function DBWriteComponent(arg1::Ptr{DBfile},arg2::Ptr{DBobject},arg3::Ptr{UInt8},arg4::Ptr{UInt8},arg5::Ptr{UInt8},arg6::Ptr{Void},arg7::Cint,arg8::Ptr{Clong})
  ccall((:DBWriteComponent,libsilo),Cint,(Ptr{DBfile},Ptr{DBobject},Ptr{UInt8},Ptr{UInt8},Ptr{UInt8},Ptr{Void},Cint,Ptr{Clong}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8)
end

function DBWrite(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{Void},arg4::Ptr{Cint},arg5::Cint,arg6::Cint)
  ccall((:DBWrite,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Void},Ptr{Cint},Cint,Cint),arg1,arg2,arg3,arg4,arg5,arg6)
end

function DBWriteSlice(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{Void},arg4::Cint,arg5::Ptr{Cint},arg6::Ptr{Cint},arg7::Ptr{Cint},arg8::Ptr{Cint},arg9::Cint)
  ccall((:DBWriteSlice,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Void},Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Cint),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function DBCalcExternalFacelist(arg1::Ptr{Cint},arg2::Cint,arg3::Cint,arg4::Ptr{Cint},arg5::Ptr{Cint},arg6::Cint,arg7::Ptr{Cint},arg8::Cint)
  ccall((:DBCalcExternalFacelist,libsilo),Ptr{DBfacelist},(Ptr{Cint},Cint,Cint,Ptr{Cint},Ptr{Cint},Cint,Ptr{Cint},Cint),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8)
end

function DBCalcExternalFacelist2(arg1::Ptr{Cint},arg2::Cint,arg3::Cint,arg4::Cint,arg5::Cint,arg6::Ptr{Cint},arg7::Ptr{Cint},arg8::Ptr{Cint},arg9::Cint,arg10::Ptr{Cint},arg11::Cint)
  ccall((:DBCalcExternalFacelist2,libsilo),Ptr{DBfacelist},(Ptr{Cint},Cint,Cint,Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Cint,Ptr{Cint},Cint),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11)
end

function DBGetDir(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetDir,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBSetDir(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBSetDir,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBSetDirID(arg1::Ptr{DBfile},arg2::Cint)
  ccall((:DBSetDirID,libsilo),Cint,(Ptr{DBfile},Cint),arg1,arg2)
end

function DBListDir(arg1::Ptr{DBfile},arg2::Ptr{Ptr{UInt8}},arg3::Cint)
  ccall((:DBListDir,libsilo),Cint,(Ptr{DBfile},Ptr{Ptr{UInt8}},Cint),arg1,arg2,arg3)
end

function DBMkDir(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBMkDir,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end
const DBMkdir = DBMkDir

function DBCpDir(dbfile::Ptr{DBfile},srcDir::Ptr{UInt8},dstFile::Ptr{DBfile},dstDir::Ptr{UInt8})
  ccall((:DBCpDir,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{DBfile},Ptr{UInt8}),dbfile,srcDir,dstFile,dstDir)
end

function DBReadAtt(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8},arg4::Ptr{Void})
  ccall((:DBReadAtt,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Ptr{Void}),arg1,arg2,arg3,arg4)
end

function DBRead(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{Void})
  ccall((:DBRead,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Void}),arg1,arg2,arg3)
end

function DBReadVar(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{Void})
  ccall((:DBReadVar,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Void}),arg1,arg2,arg3)
end

function DBReadVar1(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Void})
  ccall((:DBReadVar1,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Void}),arg1,arg2,arg3,arg4)
end

function DBReadVarSlice(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{Cint},arg4::Ptr{Cint},arg5::Ptr{Cint},arg6::Cint,arg7::Ptr{Void})
  ccall((:DBReadVarSlice,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Cint},Ptr{Cint},Ptr{Cint},Cint,Ptr{Void}),arg1,arg2,arg3,arg4,arg5,arg6,arg7)
end

function DBGetObjtypeTag(arg1::Ptr{UInt8})
  ccall((:DBGetObjtypeTag,libsilo),Cint,(Ptr{UInt8},),arg1)
end

function DBMakeObject(arg1::Ptr{UInt8},arg2::Cint,arg3::Cint)
  ccall((:DBMakeObject,libsilo),Ptr{DBobject},(Ptr{UInt8},Cint,Cint),arg1,arg2,arg3)
end

function DBFreeObject(arg1::Ptr{DBobject})
  ccall((:DBFreeObject,libsilo),Cint,(Ptr{DBobject},),arg1)
end

function DBClearObject(arg1::Ptr{DBobject})
  ccall((:DBClearObject,libsilo),Cint,(Ptr{DBobject},),arg1)
end

function DBAddVarComponent(arg1::Ptr{DBobject},arg2::Ptr{UInt8},arg3::Ptr{UInt8})
  ccall((:DBAddVarComponent,libsilo),Cint,(Ptr{DBobject},Ptr{UInt8},Ptr{UInt8}),arg1,arg2,arg3)
end

function DBAddIntComponent(arg1::Ptr{DBobject},arg2::Ptr{UInt8},arg3::Cint)
  ccall((:DBAddIntComponent,libsilo),Cint,(Ptr{DBobject},Ptr{UInt8},Cint),arg1,arg2,arg3)
end

function DBAddFltComponent(arg1::Ptr{DBobject},arg2::Ptr{UInt8},arg3::Cdouble)
  ccall((:DBAddFltComponent,libsilo),Cint,(Ptr{DBobject},Ptr{UInt8},Cdouble),arg1,arg2,arg3)
end

function DBAddDblComponent(arg1::Ptr{DBobject},arg2::Ptr{UInt8},arg3::Cdouble)
  ccall((:DBAddDblComponent,libsilo),Cint,(Ptr{DBobject},Ptr{UInt8},Cdouble),arg1,arg2,arg3)
end

function DBAddStrComponent(arg1::Ptr{DBobject},arg2::Ptr{UInt8},arg3::Ptr{UInt8})
  ccall((:DBAddStrComponent,libsilo),Cint,(Ptr{DBobject},Ptr{UInt8},Ptr{UInt8}),arg1,arg2,arg3)
end

function DBGetComponentNames(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{Ptr{Ptr{UInt8}}},arg4::Ptr{Ptr{Ptr{UInt8}}})
  ccall((:DBGetComponentNames,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Ptr{Ptr{UInt8}}},Ptr{Ptr{Ptr{UInt8}}}),arg1,arg2,arg3,arg4)
end

function DBGetCompoundarray(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetCompoundarray,libsilo),Ptr{DBcompoundarray},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetCurve(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetCurve,libsilo),Ptr{DBcurve},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end
function DBGetCurve(arg1::Ptr{DBfile},arg2::ASCIIString)
  ccall((:DBGetCurve,libsilo),Ptr{DBcurve},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetDefvars(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetDefvars,libsilo),Ptr{DBdefvars},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetMaterial(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetMaterial,libsilo),Ptr{DBmaterial},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetMatspecies(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetMatspecies,libsilo),Ptr{DBmatspecies},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetMultimesh(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetMultimesh,libsilo),Ptr{DBmultimesh},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetMultimeshadj(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Cint})
  ccall((:DBGetMultimeshadj,libsilo),Ptr{DBmultimeshadj},(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Cint}),arg1,arg2,arg3,arg4)
end

function DBGetMultivar(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetMultivar,libsilo),Ptr{DBmultivar},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetMultimat(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetMultimat,libsilo),Ptr{DBmultimat},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetMultimatspecies(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetMultimatspecies,libsilo),Ptr{DBmultimatspecies},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetPointmesh(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetPointmesh,libsilo),Ptr{DBpointmesh},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetPointvar(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetPointvar,libsilo),Ptr{DBmeshvar},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetQuadmesh(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetQuadmesh,libsilo),Ptr{DBquadmesh},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetQuadvar(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetQuadvar,libsilo),Ptr{DBquadvar},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetQuadvar1(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{Void},arg4::Ptr{Cint},arg5::Ptr{Cint},arg6::Ptr{Void},arg7::Ptr{Cint},arg8::Ptr{Cint},arg9::Ptr{Cint})
  ccall((:DBGetQuadvar1,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Void},Ptr{Cint},Ptr{Cint},Ptr{Cint}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function DBAnnotateUcdmesh(arg1::Ptr{DBucdmesh})
  ccall((:DBAnnotateUcdmesh,libsilo),Cint,(Ptr{DBucdmesh},),arg1)
end

function DBGetUcdmesh(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetUcdmesh,libsilo),Ptr{DBucdmesh},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetUcdvar(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetUcdvar,libsilo),Ptr{DBucdvar},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetCsgmesh(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetCsgmesh,libsilo),Ptr{DBcsgmesh},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetCsgvar(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetCsgvar,libsilo),Ptr{DBcsgvar},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetCSGZonelist(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetCSGZonelist,libsilo),Ptr{DBcsgzonelist},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetFacelist(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetFacelist,libsilo),Ptr{DBfacelist},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetZonelist(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetZonelist,libsilo),Ptr{DBzonelist},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetPHZonelist(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetPHZonelist,libsilo),Ptr{DBphzonelist},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetVar(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetVar,libsilo),Ptr{Void},(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetVarByteLength(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetVarByteLength,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetVarLength(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetVarLength,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBGetVarDims(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Cint})
  ccall((:DBGetVarDims,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Cint}),arg1,arg2,arg3,arg4)
end

function DBGetVarType(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBGetVarType,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBInqFileHasObjects(arg1::Ptr{DBfile})
  ccall((:DBInqFileHasObjects,libsilo),Cint,(Ptr{DBfile},),arg1)
end

function DBInqMeshname(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8})
  ccall((:DBInqMeshname,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8}),arg1,arg2,arg3)
end

function DBInqMeshtype(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBInqMeshtype,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBInqCompoundarray(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{Ptr{Ptr{UInt8}}},arg4::Ptr{Ptr{Cint}},arg5::Ptr{Cint},arg6::Ptr{Cint},arg7::Ptr{Cint})
  ccall((:DBInqCompoundarray,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Ptr{Ptr{UInt8}}},Ptr{Ptr{Cint}},Ptr{Cint},Ptr{Cint},Ptr{Cint}),arg1,arg2,arg3,arg4,arg5,arg6,arg7)
end

# Note: Now returns C-integer rather than DBObjectType
function DBInqVarType(arg1::Ptr{DBfile},arg2::Ptr{UInt8})
  ccall((:DBInqVarType,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8}),arg1,arg2)
end

function DBPutCompoundarray(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{Ptr{UInt8}},arg4::Ptr{Cint},arg5::Cint,arg6::Ptr{Void},arg7::Cint,arg8::Cint,arg9::Ptr{DBoptlist})
  ccall((:DBPutCompoundarray,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Ptr{UInt8}},Ptr{Cint},Cint,Ptr{Void},Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function DBPutCurve(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{Void},arg4::Ptr{Void},arg5::Cint,arg6::Cint,arg7::Ptr{DBoptlist})
  ccall((:DBPutCurve,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Void},Ptr{Void},Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7)
end
function DBPutCurve{T1<:AbstractString}(dbfile::Ptr{DBfile},curvename::T1,xvals::Vector,yvals::Vector,datatype::Int,npoints::Int,optlist::Ptr{DBoptlist})
  ccall((:DBPutCurve,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Void},Ptr{Void},Cint,Cint,Ptr{DBoptlist}),dbfile,curvename,xvals,yvals,datatype,npoints,optlist)
end

function DBPutDefvars(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Ptr{UInt8}},arg5::Ptr{Cint},arg6::Ptr{Ptr{UInt8}},arg7::Ptr{Ptr{DBoptlist}})
  ccall((:DBPutDefvars,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Ptr{UInt8}},Ptr{Cint},Ptr{Ptr{UInt8}},Ptr{Ptr{DBoptlist}}),arg1,arg2,arg3,arg4,arg5,arg6,arg7)
end

function DBPutFacelist(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Cint,arg5::Ptr{Cint},arg6::Cint,arg7::Cint,arg8::Ptr{Cint},arg9::Ptr{Cint},arg10::Ptr{Cint},arg11::Cint,arg12::Ptr{Cint},arg13::Ptr{Cint},arg14::Cint)
  ccall((:DBPutFacelist,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Cint,Ptr{Cint},Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Cint,Ptr{Cint},Ptr{Cint},Cint),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14)
end

function DBPutMaterial(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8},arg4::Cint,arg5::Ptr{Cint},arg6::Ptr{Cint},arg7::Ptr{Cint},arg8::Cint,arg9::Ptr{Cint},arg10::Ptr{Cint},arg11::Ptr{Cint},arg12::Ptr{Void},arg13::Cint,arg14::Cint,arg15::Ptr{DBoptlist})
  ccall((:DBPutMaterial,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Void},Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,arg15)
end

function DBPutMatspecies(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8},arg4::Cint,arg5::Ptr{Cint},arg6::Ptr{Cint},arg7::Ptr{Cint},arg8::Cint,arg9::Cint,arg10::Ptr{Void},arg11::Ptr{Cint},arg12::Cint,arg13::Cint,arg14::Ptr{DBoptlist})
  ccall((:DBPutMatspecies,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Cint,Cint,Ptr{Void},Ptr{Cint},Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14)
end

function DBPutMultimesh(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Ptr{UInt8}},arg5::Ptr{Cint},arg6::Ptr{DBoptlist})
  ccall((:DBPutMultimesh,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Ptr{UInt8}},Ptr{Cint},Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6)
end

function DBPutMultimeshadj(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Cint},arg5::Ptr{Cint},arg6::Ptr{Cint},arg7::Ptr{Cint},arg8::Ptr{Cint},arg9::Ptr{Ptr{Cint}},arg10::Ptr{Cint},arg11::Ptr{Ptr{Cint}},optlist::Ptr{DBoptlist})
  ccall((:DBPutMultimeshadj,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Ptr{Cint}},Ptr{Cint},Ptr{Ptr{Cint}},Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,optlist)
end

function DBPutMultivar(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Ptr{UInt8}},arg5::Ptr{Cint},arg6::Ptr{DBoptlist})
  ccall((:DBPutMultivar,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Ptr{UInt8}},Ptr{Cint},Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6)
end

function DBPutMultimat(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Ptr{UInt8}},arg5::Ptr{DBoptlist})
  ccall((:DBPutMultimat,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Ptr{UInt8}},Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5)
end

function DBPutMultimatspecies(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Ptr{UInt8}},arg5::Ptr{DBoptlist})
  ccall((:DBPutMultimatspecies,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Ptr{UInt8}},Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5)
end

function DBPutPointmesh(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Void},arg5::Cint,arg6::Cint,arg7::Ptr{DBoptlist})
  ccall((:DBPutPointmesh,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Void},Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7)
end

function DBPutPointvar(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8},arg4::Cint,arg5::Ptr{Void},arg6::Cint,arg7::Cint,arg8::Ptr{DBoptlist})
  ccall((:DBPutPointvar,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Cint,Ptr{Void},Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8)
end

function DBPutPointvar1(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8},arg4::Ptr{Void},arg5::Cint,arg6::Cint,arg7::Ptr{DBoptlist})
  ccall((:DBPutPointvar1,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Ptr{Void},Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7)
end

function DBPutQuadmesh(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{Ptr{UInt8}},arg4::Ptr{Void},arg5::Ptr{Cint},arg6::Cint,arg7::Cint,arg8::Cint,arg9::Ptr{DBoptlist})
  ccall((:DBPutQuadmesh,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{Ptr{UInt8}},Ptr{Void},Ptr{Cint},Cint,Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9)
end

function DBPutQuadvar(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8},arg4::Cint,arg5::Ptr{Ptr{UInt8}},arg6::Ptr{Void},arg7::Ptr{Cint},arg8::Cint,arg9::Ptr{Void},arg10::Cint,arg11::Cint,arg12::Cint,arg13::Ptr{DBoptlist})
  ccall((:DBPutQuadvar,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Cint,Ptr{Ptr{UInt8}},Ptr{Void},Ptr{Cint},Cint,Ptr{Void},Cint,Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13)
end

function DBPutQuadvar1(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8},arg4::Ptr{Void},arg5::Ptr{Cint},arg6::Cint,arg7::Ptr{Void},arg8::Cint,arg9::Cint,arg10::Cint,arg11::Ptr{DBoptlist})
  ccall((:DBPutQuadvar1,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Ptr{Void},Ptr{Cint},Cint,Ptr{Void},Cint,Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11)
end

function DBPutUcdmesh(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Ptr{UInt8}},arg5::Ptr{Void},arg6::Cint,arg7::Cint,arg8::Ptr{UInt8},arg9::Ptr{UInt8},arg10::Cint,arg11::Ptr{DBoptlist})
  ccall((:DBPutUcdmesh,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Ptr{UInt8}},Ptr{Void},Cint,Cint,Ptr{UInt8},Ptr{UInt8},Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11)
end

function DBPutUcdsubmesh(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8},arg4::Cint,arg5::Ptr{UInt8},arg6::Ptr{UInt8},arg7::Ptr{DBoptlist})
  ccall((:DBPutUcdsubmesh,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Cint,Ptr{UInt8},Ptr{UInt8},Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7)
end

function DBPutUcdvar(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8},arg4::Cint,arg5::Ptr{Ptr{UInt8}},arg6::Ptr{Void},arg7::Cint,arg8::Ptr{Void},arg9::Cint,arg10::Cint,arg11::Cint,arg12::Ptr{DBoptlist})
  ccall((:DBPutUcdvar,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Cint,Ptr{Ptr{UInt8}},Ptr{Void},Cint,Ptr{Void},Cint,Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12)
end

function DBPutUcdvar1(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8},arg4::Ptr{Void},arg5::Cint,arg6::Ptr{Void},arg7::Cint,arg8::Cint,arg9::Cint,arg10::Ptr{DBoptlist})
  ccall((:DBPutUcdvar1,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Ptr{Void},Cint,Ptr{Void},Cint,Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10)
end

function DBPutZonelist(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Cint,arg5::Ptr{Cint},arg6::Cint,arg7::Cint,arg8::Ptr{Cint},arg9::Ptr{Cint},arg10::Cint)
  ccall((:DBPutZonelist,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Cint,Ptr{Cint},Cint,Cint,Ptr{Cint},Ptr{Cint},Cint),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10)
end

function DBPutZonelist2(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Cint,arg5::Ptr{Cint},arg6::Cint,arg7::Cint,arg8::Cint,arg9::Cint,arg10::Ptr{Cint},arg11::Ptr{Cint},arg12::Ptr{Cint},arg13::Cint,arg14::Ptr{DBoptlist})
  ccall((:DBPutZonelist2,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Cint,Ptr{Cint},Cint,Cint,Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14)
end

function DBPutPHZonelist(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Cint},arg5::Cint,arg6::Ptr{Cint},arg7::Ptr{UInt8},arg8::Cint,arg9::Ptr{Cint},arg10::Cint,arg11::Ptr{Cint},arg12::Cint,arg13::Cint,arg14::Cint,arg15::Ptr{DBoptlist})
  ccall((:DBPutPHZonelist,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Cint},Cint,Ptr{Cint},Ptr{UInt8},Cint,Ptr{Cint},Cint,Ptr{Cint},Cint,Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,arg15)
end

function DBPutCsgmesh(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Cint,arg5::Ptr{Cint},arg6::Ptr{Cint},arg7::Ptr{Void},arg8::Cint,arg9::Cint,arg10::Ptr{Cdouble},arg11::Ptr{UInt8},arg12::Ptr{DBoptlist})
  ccall((:DBPutCsgmesh,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Cint,Ptr{Cint},Ptr{Cint},Ptr{Void},Cint,Cint,Ptr{Cdouble},Ptr{UInt8},Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12)
end

function DBPutCSGZonelist(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Cint,arg4::Ptr{Cint},arg5::Ptr{Cint},arg6::Ptr{Cint},arg7::Ptr{Void},arg8::Cint,arg9::Cint,arg10::Cint,arg11::Ptr{Cint},arg12::Ptr{DBoptlist})
  ccall((:DBPutCSGZonelist,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Void},Cint,Cint,Cint,Ptr{Cint},Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12)
end

function DBPutCsgvar(arg1::Ptr{DBfile},arg2::Ptr{UInt8},arg3::Ptr{UInt8},arg4::Cint,arg5::Ptr{Ptr{UInt8}},arg6::Ptr{Ptr{Void}},arg7::Cint,arg8::Cint,arg9::Cint,arg10::Ptr{DBoptlist})
  ccall((:DBPutCsgvar,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Cint,Ptr{Ptr{UInt8}},Ptr{Ptr{Void}},Cint,Cint,Cint,Ptr{DBoptlist}),arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10)
end

function DBFreeMrgtree(tree::Ptr{DBmrgtree})
  ccall((:DBFreeMrgtree,libsilo),Void,(Ptr{DBmrgtree},),tree)
end

function DBPrintMrgtree(tnode::Ptr{DBmrgtnode},walk_order::Cint,data::Ptr{Void})
  ccall((:DBPrintMrgtree,libsilo),Void,(Ptr{DBmrgtnode},Cint,Ptr{Void}),tnode,walk_order,data)
end

function DBLinearizeMrgtree(tnode::Ptr{DBmrgtnode},walk_order::Cint,data::Ptr{Void})
  ccall((:DBLinearizeMrgtree,libsilo),Void,(Ptr{DBmrgtnode},Cint,Ptr{Void}),tnode,walk_order,data)
end

warn("Function DBWalkMrgtree not wrapped (requires function typedef)")
# function DBWalkMrgtree(tree::Ptr{DBmrgtree},cb::DBmrgwalkcb,wdata::Ptr{Void},traversal_order::Cint)
#     ccall((:DBWalkMrgtree,libsilo),Void,(Ptr{DBmrgtree},DBmrgwalkcb,Ptr{Void},Cint),tree,cb,wdata,traversal_order)
# end

function DBMakeMrgtree(source_mesh_type::Cint,mrgtree_info::Cint,max_root_descendents::Cint,opts::Ptr{DBoptlist})
  ccall((:DBMakeMrgtree,libsilo),Ptr{DBmrgtree},(Cint,Cint,Cint,Ptr{DBoptlist}),source_mesh_type,mrgtree_info,max_root_descendents,opts)
end

function DBAddRegion(tree::Ptr{DBmrgtree},region_name::Ptr{UInt8},type_info_bits::Cint,max_descendents::Cint,maps_name::Ptr{UInt8},nsegs::Cint,seg_ids::Ptr{Cint},seg_sizes::Ptr{Cint},seg_types::Ptr{Cint},opts::Ptr{DBoptlist})
  ccall((:DBAddRegion,libsilo),Cint,(Ptr{DBmrgtree},Ptr{UInt8},Cint,Cint,Ptr{UInt8},Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{DBoptlist}),tree,region_name,type_info_bits,max_descendents,maps_name,nsegs,seg_ids,seg_sizes,seg_types,opts)
end

function DBAddRegionArray(tree::Ptr{DBmrgtree},nregn::Cint,regn_names::Ptr{Ptr{UInt8}},type_info_bits::Cint,maps_name::Ptr{UInt8},nsegs::Cint,seg_ids::Ptr{Cint},seg_sizes::Ptr{Cint},seg_types::Ptr{Cint},opts::Ptr{DBoptlist})
  ccall((:DBAddRegionArray,libsilo),Cint,(Ptr{DBmrgtree},Cint,Ptr{Ptr{UInt8}},Cint,Ptr{UInt8},Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{DBoptlist}),tree,nregn,regn_names,type_info_bits,maps_name,nsegs,seg_ids,seg_sizes,seg_types,opts)
end

function DBSetCwr(tree::Ptr{DBmrgtree},path::Ptr{UInt8})
  ccall((:DBSetCwr,libsilo),Cint,(Ptr{DBmrgtree},Ptr{UInt8}),tree,path)
end

function DBGetCwr(tree::Ptr{DBmrgtree})
  ccall((:DBGetCwr,libsilo),Ptr{UInt8},(Ptr{DBmrgtree},),tree)
end

function DBPutMrgtree(dbfile::Ptr{DBfile},mrg_tree_name::Ptr{UInt8},mesh_name::Ptr{UInt8},tree::Ptr{DBmrgtree},opts::Ptr{DBoptlist})
  ccall((:DBPutMrgtree,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Ptr{DBmrgtree},Ptr{DBoptlist}),dbfile,mrg_tree_name,mesh_name,tree,opts)
end

function DBGetMrgtree(dbfile::Ptr{DBfile},mrg_tree_name::Ptr{UInt8})
  ccall((:DBGetMrgtree,libsilo),Ptr{DBmrgtree},(Ptr{DBfile},Ptr{UInt8}),dbfile,mrg_tree_name)
end

function DBPutMrgvar(dbfile::Ptr{DBfile},name::Ptr{UInt8},mrgt_name::Ptr{UInt8},ncomps::Cint,compnames::Ptr{Ptr{UInt8}},nregns::Cint,reg_pnames::Ptr{Ptr{UInt8}},datatype::Cint,data::Ptr{Ptr{Void}},opts::Ptr{DBoptlist})
  ccall((:DBPutMrgvar,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Ptr{UInt8},Cint,Ptr{Ptr{UInt8}},Cint,Ptr{Ptr{UInt8}},Cint,Ptr{Ptr{Void}},Ptr{DBoptlist}),dbfile,name,mrgt_name,ncomps,compnames,nregns,reg_pnames,datatype,data,opts)
end

function DBGetMrgvar(dbfile::Ptr{DBfile},name::Ptr{UInt8})
  ccall((:DBGetMrgvar,libsilo),Ptr{DBmrgvar},(Ptr{DBfile},Ptr{UInt8}),dbfile,name)
end

function DBFreeMrgvar(mrgv::Ptr{DBmrgvar})
  ccall((:DBFreeMrgvar,libsilo),Void,(Ptr{DBmrgvar},),mrgv)
end

function DBPutGroupelmap(dbfile::Ptr{DBfile},map_name::Ptr{UInt8},num_segments::Cint,groupel_types::Ptr{Cint},segment_lengths::Ptr{Cint},segment_ids::Ptr{Cint},segment_data::Ptr{Ptr{Cint}},segment_fracs::Ptr{Ptr{Void}},fracs_data_type::Cint,opts::Ptr{DBoptlist})
  ccall((:DBPutGroupelmap,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8},Cint,Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Ptr{Cint}},Ptr{Ptr{Void}},Cint,Ptr{DBoptlist}),dbfile,map_name,num_segments,groupel_types,segment_lengths,segment_ids,segment_data,segment_fracs,fracs_data_type,opts)
end

function DBGetGroupelmap(dbfile::Ptr{DBfile},name::Ptr{UInt8})
  ccall((:DBGetGroupelmap,libsilo),Ptr{DBgroupelmap},(Ptr{DBfile},Ptr{UInt8}),dbfile,name)
end

function DBFreeGroupelmap(map::Ptr{DBgroupelmap})
  ccall((:DBFreeGroupelmap,libsilo),Void,(Ptr{DBgroupelmap},),map)
end

function DBFortranAccessPointer(value::Cint)
  ccall((:DBFortranAccessPointer,libsilo),Ptr{Void},(Cint,),value)
end

function DBFortranAllocPointer(pointer::Ptr{Void})
  ccall((:DBFortranAllocPointer,libsilo),Cint,(Ptr{Void},),pointer)
end

function DBFortranRemovePointer(value::Cint)
  ccall((:DBFortranRemovePointer,libsilo),Void,(Cint,),value)
end

function DBVariableNameValid(s::Ptr{UInt8})
  ccall((:DBVariableNameValid,libsilo),Cint,(Ptr{UInt8},),s)
end

function safe_strdup(s::Ptr{UInt8})
  ccall((:safe_strdup,libsilo),Ptr{UInt8},(Ptr{UInt8},),s)
end

function DBFreeCompressionResources(dbfile::Ptr{DBfile},meshname::Ptr{UInt8})
  ccall((:DBFreeCompressionResources,libsilo),Cint,(Ptr{DBfile},Ptr{UInt8}),dbfile,meshname)
end

function DBGetName(ns::Ptr{DBnamescheme},natnum::Cint)
  ccall((:DBGetName,libsilo),Ptr{UInt8},(Ptr{DBnamescheme},Cint),ns,natnum)
end

function DBStringArrayToStringList(strArray::Ptr{Ptr{UInt8}},n::Cint,strList::Ptr{Ptr{UInt8}},m::Ptr{Cint})
  ccall((:DBStringArrayToStringList,libsilo),Void,(Ptr{Ptr{UInt8}},Cint,Ptr{Ptr{UInt8}},Ptr{Cint}),strArray,n,strList,m)
end

function DBStringListToStringArray(strList::Ptr{UInt8},n::Ptr{Cint},handleSlashSwap::Cint,skipSemicolonAtIndexZero::Cint)
  ccall((:DBStringListToStringArray,libsilo),Ptr{Ptr{UInt8}},(Ptr{UInt8},Ptr{Cint},Cint,Cint),strList,n,handleSlashSwap,skipSemicolonAtIndexZero)
end

Version() = bytestring(ccall((:DBVersion, libsilo), Ptr{UInt8}, ()))
const _VERSION = convert(VersionNumber, Version())
