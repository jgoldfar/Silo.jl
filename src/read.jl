# read.jl: Silo variable reading routines

export siloread

function siloread(file::silofile, name::String)
  curve_int = unsafe_load(DBGetCurve(file.dbfile, name))
#   dump(curve_int)
  npts = curve_int.npts
#   println("Importing $npts points from ", bytestring(curve_int.title))
#   dump(curve_int.x)
  y_values_eltype = curve_int.datatype
#   println(y_values_eltype)
#   datatype = Float32
  if haskey(DBdatatype.SiloJuliatypemap, y_values_eltype)
    datatype = DBdatatype.SiloJuliatypemap[y_values_eltype]
  else
    error("Datatype $y_values_eltype currently unsupported.")
  end
  xv = pointer_to_array(reinterpret(Ptr{datatype}, curve_int.x), npts)
  yv = pointer_to_array(reinterpret(Ptr{datatype}, curve_int.y), npts)
  return xv, yv
end
