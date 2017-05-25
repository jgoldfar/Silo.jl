const thesevecnames = @compat Dict(
    :ncurve => :curve_names,
    :nmultimesh=>:multimesh_names,
    :nmultimeshadj=>:multimeshadj_names,
    :nmultivar=>:multivar_names,
    :nmultimat=>:multimat_names,
    :nmultimatspecies=>:multimatspecies_names,
    :ncsgmesh=>:csgmesh_names,
    :ncsgvar=>:csgvar_names,
    :ndefvars=>:defvars_names,
    :nqmesh=>:qmesh_names,
    :nqvar=>:qvar_names,
    :nucdmesh=>:ucdmesh_names,
    :nucdvar=>:ucdvar_names,
    :nptmesh=>:ptmesh_names,
    :nptvar=>:ptvar_names,
    :nmat=>:mat_names,
    :nmatspecies=>:matspecies_names,
    :nvar=>:var_names,
    :nobj=>:obj_names,
    :ndir=>:dir_names,
    :narray=>:array_names,
    :nmrgtree=>:mrgtree_names,
    :ngroupelmap=>:groupelmap_names,
    :nmrgvar=>:mrgvar_names)

type JToc
  curve_names::Vector{String}
  multimesh_names::Vector{String}
  multimeshadj_names::Vector{String}
  multivar_names::Vector{String}
  multimat_names::Vector{String}
  multimatspecies_names::Vector{String}
  csgmesh_names::Vector{String}
  csgvar_names::Vector{String}
  defvars_names::Vector{String}
  qmesh_names::Vector{String}
  qvar_names::Vector{String}
  ucdmesh_names::Vector{String}
  ucdvar_names::Vector{String}
  ptmesh_names::Vector{String}
  ptvar_names::Vector{String}
  mat_names::Vector{String}
  matspecies_names::Vector{String}
  var_names::Vector{String}
  obj_names::Vector{String}
  dir_names::Vector{String}
  array_names::Vector{String}
  mrgtree_names::Vector{String}
  groupelmap_names::Vector{String}
  mrgvar_names::Vector{String}

  namemapping::Dict{Symbol,Symbol}
  function JToc(dbfile::Ptr{DBfile})
    inttoc = new()

    rawnames = unsafe_load(DBGetToc(dbfile))
    thesenums = [keyname => Int32(rawnames.(keyname)) for keyname in keys(thesevecnames)]

    for keyname in keys(thesevecnames)
      if thesenums[keyname] == 0
        inttoc.(thesevecnames[keyname]) = Array(String, 0,)
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

## Functionality related to file names introspection
function Base.names(dbfile::Ptr{DBfile})
  tocin = JToc(dbfile)
  return tocin.curve_names
end
function Base.names(dbfile::silofile)
  if isvalid(dbfile)
    namesarr = names(dbfile.dbfile)
  else
    error("Passed silofile object is not valid.")
  end
  namesarr
end
function Base.names(file_name::String)
  dbfile = siloopen(file_name, "r")
  namesarr = names(dbfile)
  siloclose(dbfile)
  return namesarr
end
#
# export silofile, isvalid, silo_is_silofile, siloopen, siloclose
#
## Thin Julia type wrapper around the internal DBfile pointer
# tracks whether pointer is internally allocated, and the associated
# filename.
type silofile
  dbfile::Ptr{DBfile}
  filemode::String
  file_name::String
  ptropen::Bool
end
# function silofile(dbfile::Ptr{DBfile}, filemode::String, file_name::String, ptropen::Bool, toclose::Bool)
#   f = silofile(dbfile, filemode, file_name, ptropen)
#   toclose && finalizer(f, siloclose)
#   return f
# end

isvalid(f::silofile) = f.ptropen
Base.convert(::Type{Ptr}, f::silofile) = f.dbfile
Base.show(io::IO, f::silofile) = isvalid(f) ? print(io, "Silo file: ", f.file_name, " open with mode ", f.filemode) : print(io, "Closed Silo file: ", f.file_name)
#
#
#
## High-level Julia open/close functionality
function siloopen(file_name::String,
                  mode::String;
                  filetype::Int = DB_PDB,
                  fileinfo::String = "",
                  filecreatemode::Int = DB_CLOBBER,
                  filecreatetarget::Int = DB_LOCAL,)
  if mode=="r"
    if !isfile(file_name)
      error("File $file_name does not exist.")
    end
    if !is_silofile(file_name)
      error("File $file_name is not a Silo file.")
    end
    dbfile = DBOpenReal(file_name, filetype, DB_READ)
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

include("write.jl")

include("read.jl")
