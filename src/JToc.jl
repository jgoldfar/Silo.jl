type JToc{T1<:AbstractString}
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
    const thesevecnames = @compat Dict(:ncurve => :curve_names,:nmultimesh=>:multimesh_names,:nmultimeshadj=>:multimeshadj_names,:nmultivar=>:multivar_names,:nmultimat=>:multimat_names,:nmultimatspecies=>:multimatspecies_names,:ncsgmesh=>:csgmesh_names,:ncsgvar=>:csgvar_names,:ndefvars=>:defvars_names, :nqmesh=>:qmesh_names,:nqvar=>:qvar_names,:nucdmesh=>:ucdmesh_names,:nucdvar=>:ucdvar_names,:nptmesh=>:ptmesh_names,:nptvar=>:ptvar_names,:nmat=>:mat_names, :nmatspecies=>:matspecies_names,:nvar=>:var_names,:nobj=>:obj_names,:ndir=>:dir_names,:narray=>:array_names,:nmrgtree=>:mrgtree_names,:ngroupelmap=>:groupelmap_names,:nmrgvar=>:mrgvar_names)

    const rawnames = unsafe_load(DBGetToc(dbfile))
    const thesenums = [keyname => Int32(rawnames.(keyname)) for keyname in keys(thesevecnames)]

    for keyname in keys(thesevecnames)
      if thesenums[keyname] == 0
        inttoc.(thesevecnames[keyname]) = Array(ASCIIString, 0,)
      else
        inttoc.(thesevecnames[keyname]) = map(bytestring,pointer_to_array(rawnames.(thesevecnames[keyname]), thesenums[keyname]))
      end
  end
    inttoc.namemapping = thesevecnames
  return inttoc
  end #function
end #type
