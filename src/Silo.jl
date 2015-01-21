# Silo.jl: Wrapper around the Silo library (https://wci.llnl.gov/simulation/computer-codes/silo)
module Silo
if isfile(joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl"))
    include(joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl"))
else
    error("Silo not properly installed. Please run Pkg.build(\"Silo\")")
end

# using StrPack

# "Sections" of code based on documentation

include("libsilo_h.jl")

include("libsilo.jl")

println("Silo version ", _VERSION, " loaded.")

type silooption
  id::Int
  data::String
end
typealias silooptions Vector{silooption}

include("optlists.jl")

## Thin Julia type wrapper around the internal DBfile pointer
# tracks whether pointer is internally allocated, and the associated
# filename.
type silofile{T1<:String}
  dbfile::Ptr{DBfile}
  filemode::T1
  file_name::T1
  ptropen::Bool
end
# function silofile{T1<:String}(dbfile::Ptr{DBfile}, filemode::T1, file_name::T1, ptropen::Bool, toclose::Bool)
#   f = silofile(dbfile, filemode, file_name, ptropen)
#   toclose && finalizer(f, siloclose)
#   return f
# end

isvalid(f::silofile) = f.ptropen
Base.convert(::Type{Ptr}, f::silofile) = f.dbfile
Base.show(io::IO, f::silofile) = isvalid(f) ? print(io, "Silo file: ", f.file_name, " open with mode ", f.filemode) : print(io, "Closed Silo file: ", f.file_name)

# Checks whether passed path points to valid silo file
function silo_is_silofile{T1<:String}(file_name::T1)
  return DBInqFile(file_name)>0
end


## High-level Julia open/close functionality
function siloopen{T1<:String}(file_name::T1,
                                                      mode::T1;
                                                      filetype::Int = DB_PDB,
                                                      fileinfo::T1 = "",
                                                      filecreatemode::Int = DB_CLOBBER,
                                                      filecreatetarget::Int = DB_LOCAL,)
  if mode=="r"
    if !isfile(file_name)
      error("File $file_name does not exist.")
    end
    if !silo_is_silofile(file_name)
      error("File $file_name is not a Silo file.")
    end
    dbfile = DBOpen(file_name, filetype, DB_READ)
  elseif mode=="w"
    if isfile(file_name)
      rm(file_name)
    end
    dbfile =  DBCreate(file_name, filecreatemode, filecreatetarget, fileinfo, Silo.DB_PDB)
  elseif mode=="a"
    if !isfile(file_name)
      dbfile = DBCreate(file_name, filecreatemode, filecreatetarget, fileinfo, Silo.DB_PDB)
    else
      dbfile = DBOpen(file_name, filetype, DB_APPEND)
    end
  else
    error("Mode $mode not defined for Silo files.")
  end
  if dbfile == C_NULL
    error("File $file_name could not be opened in mode $mode.")
  end
  return silofile(dbfile, mode, file_name, true)
end

function siloclose(dbfile::Ptr{DBfile})
  DBClose(dbfile)
end
function siloclose(dbfile::silofile)
  DBClose(dbfile.dbfile)
  dbfile.ptropen = false
end


## Functionality related to file names introspection
type JToc{T1<:String}
  curve_names::Vector{T1}
  multimesh_names::Vector{T1}
  multimeshadj_names::Vector{T1}
  multivar_names::Vector{T1}
  multimat_names::Vector{T1}
  multimatspecies_names::Vector{T1}
  csgmesh_names::Vector{T1}
  csgvar_names::Vector{T1}
  defvars_names::Vector{T1}
  qmesh_names::Vector{T1}
  qvar_names::Vector{T1}
  ucdmesh_names::Vector{T1}
  ucdvar_names::Vector{T1}
  ptmesh_names::Vector{T1}
  ptvar_names::Vector{T1}
  mat_names::Vector{T1}
  matspecies_names::Vector{T1}
  var_names::Vector{T1}
  obj_names::Vector{T1}
  dir_names::Vector{T1}
  array_names::Vector{T1}
  mrgtree_names::Vector{T1}
  groupelmap_names::Vector{T1}
  mrgvar_names::Vector{T1}

  namemapping::Dict{Symbol,Symbol}
  function JToc(dbfile::Ptr{DBfile})
    inttoc = new()
#     thesenames = [:curve_names, :ncurve,:multimesh_names,:nmultimesh,:multimeshadj_names,:nmultimeshadj,:multivar_names,:nmultivar,:multimat_names,:nmultimat,:multimatspecies_names,:nmultimatspecies,:csgmesh_names,:ncsgmesh,:csgvar_names,:ncsgvar,:defvars_names,:ndefvars,:qmesh_names,:nqmesh,:qvar_names,:nqvar,:ucdmesh_names,:nucdmesh,:ucdvar_names,:nucdvar,:ptmesh_names,:nptmesh,:ptvar_names,:nptvar,:mat_names,:nmat,:matspecies_names,:nmatspecies,:var_names,:nvar,:obj_names,:nobj,:dir_names,:ndir,:array_names,:narray,:mrgtree_names,:nmrgtree,:groupelmap_names,:ngroupelmap,:mrgvar_names,:nmrgvar]
    thesevecnames = [:ncurve => :curve_names,:nmultimesh=>:multimesh_names,:nmultimeshadj=>:multimeshadj_names,:nmultivar=>:multivar_names,:nmultimat=>:multimat_names,:nmultimatspecies=>:multimatspecies_names,:ncsgmesh=>:csgmesh_names,:ncsgvar=>:csgvar_names,:ndefvars=>:defvars_names, :nqmesh=>:qmesh_names,:nqvar=>:qvar_names,:nucdmesh=>:ucdmesh_names,:nucdvar=>:ucdvar_names,:nptmesh=>:ptmesh_names,:nptvar=>:ptvar_names,:nmat=>:mat_names, :nmatspecies=>:matspecies_names,:nvar=>:var_names,:nobj=>:obj_names,:ndir=>:dir_names,:narray=>:array_names,:nmrgtree=>:mrgtree_names,:ngroupelmap=>:groupelmap_names,:nmrgvar=>:mrgvar_names]
    rawnames = unsafe_load(DBGetToc(dbfile))
    thesenums = [keyname=>int32(rawnames.(keyname)) for keyname in keys(thesevecnames)]
    thesevals = Dict{Symbol, Vector{ASCIIString}}()
    for keyname in keys(thesevecnames)
      if thesenums[keyname]==0
        inttoc.(thesevecnames[keyname]) = Array(ASCIIString, 0,)
      else
        inttoc.(thesevecnames[keyname]) = map(bytestring,pointer_to_array(rawnames.(thesevecnames[keyname]), thesenums[keyname]))
      end
  end
    inttoc.namemapping = thesevecnames
  return inttoc
  end #function
end #type
function Base.show(io::IO, tocin::JToc)
  for name in values(tocin.namemapping)
    print(io, "Has $(length(tocin.name)) $(name): ", join(tocin.(name), ", "))
  end
end


function Base.names(dbfile::Ptr{DBfile})
  tocin = JToc{ASCIIString}(dbfile)
  warn("Currently only 1D curves are supported.")
  return tocin.curve_names
end
function Base.names(dbfile::silofile)
  if isvalid(dbfile)
    namesarr = names(dbfile.dbfile)
  else
    error("Passed silofile object is not valid.")
  end
end
function Base.names{T1<:String}(file_name::T1)
  dbfile = siloopen(file_name, "r")
  namesarr = names(dbfile)
  siloclose(dbfile)
  return namesarr
end

include("write.jl")

include("read.jl")

# MAIN Interface:
#	- siloopen(..., "w") mode: creates and initializes. Done
#	- overload write(file, name, values) / silowrite(...) Done (for 1D)
#	- siloclose(...) Done
#	- names(file): values contained in file Done (for 1D)
#	- overload read(file, name) / siloread(...) Done (for 1D)

end # module
