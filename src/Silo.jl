# Silo.jl: Wrapper around the Silo library (https://wci.llnl.gov/simulation/computer-codes/silo)
module Silo
if isfile(joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl"))
    include(joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl"))
else
    error("Silo not properly installed. Please run Pkg.build(\"Silo\")")
end

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
if VERSION < v"0.4-"
  include("JTocv0.3.jl")
else
  include("JTocv0.4.jl")
end
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
