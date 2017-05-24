# write.jl: Silo variable writing
export silowrite

function silowrite{T<:Real}(file::silofile, name::String, x_values::Vector{T}, y_values::Vector{T}; optlist::Ref{DBoptlist}=Ref{DBoptlist}())
  N = length(x_values)
  if length(y_values) != N
    error("silowrite requires x and y-values to be of the same length.")
  end
  y_values_eltype = eltype(y_values)
  if haskey(DBdatatype.JuliaSilotypemap, y_values_eltype)
    datatype = DBdatatype.JuliaSilotypemap[y_values_eltype]
  else
    error("Datatype $y_values_eltype currently unsupported.")
  end
  DBPutCurve(file.dbfile, name, x_values, y_values, datatype, N, optlist)
end
silowrite{T<:Real}(file::silofile, name::String, y_values::Vector{T}) = silowrite(file, name, convert(Vector{eltype(y_values)},1:length(y_values)), y_values)
