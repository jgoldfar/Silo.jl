# write.jl: Silo variable writing
export silowrite

function silowrite{T1<:String, T2<:Real}(file::silofile, name::T1, x_values::Vector{T2}, y_values::Vector{T2}; optlist::Ptr{DBoptlist}=zero(Ptr{DBoptlist}))
  N = length(x_values)
  if length(y_values) != N
    error("silowrite requires x and y-values to be of the same length.")
  end
  y_values_eltype = eltype(y_values)
#   from libsilo_h:
#   [:Int64 => DB_LONG_LONG, :Int32 => DB_INT, :Int16 =>DB_SHORT, :Int8=>DB_CHAR, :Float32 => DB_FLOAT, :Float64 => DB_DOUBLE]
  if haskey(DBdatatype.JuliaSilotypemap, y_values_eltype)
    datatype=DBdatatype.JuliaSilotypemap[y_values_eltype]
  else
    error("Datatype $y_values_eltype currently unsupported.")
  end
  return DBPutCurve(file.dbfile, name, x_values, y_values, datatype, N, optlist)
end
silowrite{T1<:String, T2<:Real}(file::silofile, name::T1, y_values::Vector{T2}) = silowrite(file, name, convert(Vector{eltype(y_values)},1:length(y_values)), y_values)
