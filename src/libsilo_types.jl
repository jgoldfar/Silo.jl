# Automatically generated using Clang.jl wrap_c, version 0.0.0

using Compat

# Skipping MacroDefinition: EOF ( - 1
# Skipping MacroDefinition: getc_unlocked ( fp ) __sgetc ( fp
# Skipping MacroDefinition: putc_unlocked ( x , fp ) __sputc ( x , fp
# Skipping MacroDefinition: getchar_unlocked ( ) getc_unlocked ( stdin
# Skipping MacroDefinition: putchar_unlocked ( x ) putc_unlocked ( x , stdout
# Skipping MacroDefinition: fropen ( cookie , fn ) funopen ( cookie , fn , 0 , 0 , 0
# Skipping MacroDefinition: fwopen ( cookie , fn ) funopen ( cookie , 0 , fn , 0 , 0
# Skipping MacroDefinition: feof_unlocked ( p ) __sfeof ( p
# Skipping MacroDefinition: ferror_unlocked ( p ) __sferror ( p
# Skipping MacroDefinition: clearerr_unlocked ( p ) __sclearerr ( p
# Skipping MacroDefinition: fileno_unlocked ( p ) __sfileno ( p
# Skipping MacroDefinition: sprintf ( str , ... ) __builtin___sprintf_chk ( str , 0 , __darwin_obsz ( str ) , __VA_ARGS__
# Skipping MacroDefinition: snprintf ( str , len , ... ) __builtin___snprintf_chk ( str , len , 0 , __darwin_obsz ( str ) , __VA_ARGS__
# Skipping MacroDefinition: vsprintf ( str , format , ap ) __builtin___vsprintf_chk ( str , 0 , __darwin_obsz ( str ) , format , ap
# Skipping MacroDefinition: vsnprintf ( str , len , format , ap ) __builtin___vsnprintf_chk ( str , len , 0 , __darwin_obsz ( str ) , format , ap
# Skipping MacroDefinition: SILO_VERSION_GE ( Maj , Min , Pat ) ( ( ( SILO_VERS_MAJ == Maj ) && ( SILO_VERS_MIN == Min ) && ( SILO_VERS_PAT >= Pat ) ) || ( ( SILO_VERS_MAJ == Maj ) && ( SILO_VERS_MIN > Min ) ) || ( SILO_VERS_MAJ > Maj )
# Skipping MacroDefinition: DB_VERSION_GE ( Maj , Min , Pat ) SILO_VERSION_GE ( Maj , Min , Pat
# Skipping MacroDefinition: DB_HDF5_OPTS ( OptsId ) ( DB_HDF5X | ( ( OptsId & 0x3F ) << 11 )
# Skipping MacroDefinition: DB_HDF5 DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_DEFAULT
# Skipping MacroDefinition: DB_HDF5_SEC2 DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_SEC2
# Skipping MacroDefinition: DB_HDF5_STDIO DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_STDIO
# Skipping MacroDefinition: DB_HDF5_CORE DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_CORE
# Skipping MacroDefinition: DB_HDF5_LOG DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_LOG
# Skipping MacroDefinition: DB_HDF5_SPLIT DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_SPLIT
# Skipping MacroDefinition: DB_HDF5_DIRECT DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_DIRECT
# Skipping MacroDefinition: DB_HDF5_FAMILY DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_FAMILY
# Skipping MacroDefinition: DB_HDF5_MPIO DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_MPIO
# Skipping MacroDefinition: DB_HDF5_MPIOP DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_MPIP
# Skipping MacroDefinition: DB_HDF5_MPIP DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_MPIP
# Skipping MacroDefinition: DB_HDF5_SILO DB_HDF5_OPTS ( DB_FILE_OPTS_H5_DEFAULT_SILO

# const DB_OFF = (-)

# Skipping MacroDefinition: DB_GHOSTTYPE_NOGHOST ( ( char ) 0x00
# Skipping MacroDefinition: DB_GHOSTTYPE_INTDUP ( ( char ) 0x01
# Skipping MacroDefinition: DB_F77NULL ( - 99
# Skipping MacroDefinition: I4D ( s , i , j , k , l ) ( l ) * s [ 3 ] + ( k ) * s [ 2 ] + ( j ) * s [ 1 ] + ( i ) * s [ 0
# Skipping MacroDefinition: I3D ( s , i , j , k ) ( k ) * s [ 2 ] + ( j ) * s [ 1 ] + ( i ) * s [ 0
# Skipping MacroDefinition: I2D ( s , i , j ) ( j ) * s [ 1 ] + ( i ) * s [ 0
# Skipping MacroDefinition: DB_MISSING_VALUE_NOT_SET ( ( double ) 1.0e+308

# const SiloCheckVersion = SILO_VERS_TAG

# Skipping MacroDefinition: DBSetDataReadMask ( A ) ,
# Skipping MacroDefinition: DBGetDataReadMask ( ) ,
# Skipping MacroDefinition: DBOpen ( NM , DR , MD ) ( SiloCheckVersion , DBOpenReal ( NM , DR , MD )
# Skipping MacroDefinition: DBCreate ( NM , MD , TG , NF , DR ) ( SiloCheckVersion , DBCreateReal ( NM , MD , TG , NF , DR )
# Skipping MacroDefinition: DBInqFile ( NM ) ( SiloCheckVersion , DBInqFileReal ( NM )

# type _opaque_pthread_attr_t
#     __sig::Clong
#     __opaque::NTuple{56,UInt8}
# end
#
# type _opaque_pthread_cond_t
#     __sig::Clong
#     __opaque::NTuple{40,UInt8}
# end
#
# type _opaque_pthread_condattr_t
#     __sig::Clong
#     __opaque::NTuple{8,UInt8}
# end
#
# type _opaque_pthread_mutex_t
#     __sig::Clong
#     __opaque::NTuple{56,UInt8}
# end
#
# type _opaque_pthread_mutexattr_t
#     __sig::Clong
#     __opaque::NTuple{8,UInt8}
# end
#
# type _opaque_pthread_once_t
#     __sig::Clong
#     __opaque::NTuple{8,UInt8}
# end
#
# type _opaque_pthread_rwlock_t
#     __sig::Clong
#     __opaque::NTuple{192,UInt8}
# end
#
# type _opaque_pthread_rwlockattr_t
#     __sig::Clong
#     __opaque::NTuple{16,UInt8}
# end
#
# type _opaque_pthread_t
#     __sig::Clong
#     __cleanup_stack::Ptr{Void}
#     __opaque::NTuple{8176,UInt8}
# end

# typealias va_list __darwin_va_list
# typealias size_t __darwin_size_t
# typealias fpos_t __darwin_off_t
typealias FILE Void
# typealias off_t __darwin_off_t
# typealias ssize_t __darwin_ssize_t
typealias DBVCP1_t Ptr{Void}
typealias DBVCP2_t Ptr{Void}
typealias DBVCP3_t Ptr{Void}
typealias DBCAS_t Ptr{Cstring}

# begin enum ANONYMOUS_1
typealias ANONYMOUS_1 Cint
const DB_INVALID_OBJECT = (Int32)(-1)
const DB_QUADRECT = (Int32)(130)
const DB_QUADCURV = (Int32)(131)
const DB_QUADMESH = (Int32)(500)
const DB_QUADVAR = (Int32)(501)
const DB_UCDMESH = (Int32)(510)
const DB_UCDVAR = (Int32)(511)
const DB_MULTIMESH = (Int32)(520)
const DB_MULTIVAR = (Int32)(521)
const DB_MULTIMAT = (Int32)(522)
const DB_MULTIMATSPECIES = (Int32)(523)
const DB_MULTIBLOCKMESH = (Int32)(520)
const DB_MULTIBLOCKVAR = (Int32)(521)
const DB_MULTIMESHADJ = (Int32)(524)
const DB_MATERIAL = (Int32)(530)
const DB_MATSPECIES = (Int32)(531)
const DB_FACELIST = (Int32)(550)
const DB_ZONELIST = (Int32)(551)
const DB_EDGELIST = (Int32)(552)
const DB_PHZONELIST = (Int32)(553)
const DB_CSGZONELIST = (Int32)(554)
const DB_CSGMESH = (Int32)(555)
const DB_CSGVAR = (Int32)(556)
const DB_CURVE = (Int32)(560)
const DB_DEFVARS = (Int32)(565)
const DB_POINTMESH = (Int32)(570)
const DB_POINTVAR = (Int32)(571)
const DB_ARRAY = (Int32)(580)
const DB_DIR = (Int32)(600)
const DB_VARIABLE = (Int32)(610)
const DB_MRGTREE = (Int32)(611)
const DB_GROUPELMAP = (Int32)(612)
const DB_MRGVAR = (Int32)(613)
const DB_USERDEF = (Int32)(700)
# end enum ANONYMOUS_1

typealias DBObjectType Void

# begin enum ANONYMOUS_2
typealias ANONYMOUS_2 UInt32
const DB_INT = (UInt32)(16)
const DB_SHORT = (UInt32)(17)
const DB_LONG = (UInt32)(18)
const DB_FLOAT = (UInt32)(19)
const DB_DOUBLE = (UInt32)(20)
const DB_CHAR = (UInt32)(21)
const DB_LONG_LONG = (UInt32)(22)
const DB_NOTYPE = (UInt32)(25)
# end enum ANONYMOUS_2

typealias DBdatatype Void

type DBtoc_
    curve_names::Ptr{Cstring}
    ncurve::Cint
    multimesh_names::Ptr{Cstring}
    nmultimesh::Cint
    multimeshadj_names::Ptr{Cstring}
    nmultimeshadj::Cint
    multivar_names::Ptr{Cstring}
    nmultivar::Cint
    multimat_names::Ptr{Cstring}
    nmultimat::Cint
    multimatspecies_names::Ptr{Cstring}
    nmultimatspecies::Cint
    csgmesh_names::Ptr{Cstring}
    ncsgmesh::Cint
    csgvar_names::Ptr{Cstring}
    ncsgvar::Cint
    defvars_names::Ptr{Cstring}
    ndefvars::Cint
    qmesh_names::Ptr{Cstring}
    nqmesh::Cint
    qvar_names::Ptr{Cstring}
    nqvar::Cint
    ucdmesh_names::Ptr{Cstring}
    nucdmesh::Cint
    ucdvar_names::Ptr{Cstring}
    nucdvar::Cint
    ptmesh_names::Ptr{Cstring}
    nptmesh::Cint
    ptvar_names::Ptr{Cstring}
    nptvar::Cint
    mat_names::Ptr{Cstring}
    nmat::Cint
    matspecies_names::Ptr{Cstring}
    nmatspecies::Cint
    var_names::Ptr{Cstring}
    nvar::Cint
    obj_names::Ptr{Cstring}
    nobj::Cint
    dir_names::Ptr{Cstring}
    ndir::Cint
    array_names::Ptr{Cstring}
    narray::Cint
    mrgtree_names::Ptr{Cstring}
    nmrgtree::Cint
    groupelmap_names::Ptr{Cstring}
    ngroupelmap::Cint
    mrgvar_names::Ptr{Cstring}
    nmrgvar::Cint
end

typealias DBtoc Void

type DBcurve_
    id::Cint
    datatype::Cint
    origin::Cint
    title::Cstring
    xvarname::Cstring
    yvarname::Cstring
    xlabel::Cstring
    ylabel::Cstring
    xunits::Cstring
    yunits::Cstring
    x::Ptr{Void}
    y::Ptr{Void}
    npts::Cint
    guihide::Cint
    reference::Cstring
    coord_sys::Cint
    missing_value::Cdouble
end

typealias DBcurve Void

type DBdefvars_
    ndefs::Cint
    names::Ptr{Cstring}
    types::Ptr{Cint}
    defns::Ptr{Cstring}
    guihides::Ptr{Cint}
end

typealias DBdefvars Void

type DBpointmesh_
    id::Cint
    block_no::Cint
    group_no::Cint
    name::Cstring
    cycle::Cint
    units::NTuple{3,Cstring}
    labels::NTuple{3,Cstring}
    title::Cstring
    coords::NTuple{3,Ptr{Void}}
    time::Cfloat
    dtime::Cdouble
    min_extents::NTuple{6,Cfloat}
    max_extents::NTuple{6,Cfloat}
    datatype::Cint
    ndims::Cint
    nels::Cint
    origin::Cint
    guihide::Cint
    gnodeno::Ptr{Void}
    mrgtree_name::Cstring
    gnznodtype::Cint
    ghost_node_labels::Cstring
    alt_nodenum_vars::Ptr{Cstring}
end

typealias DBpointmesh Void

type DBmultimesh_
    id::Cint
    nblocks::Cint
    ngroups::Cint
    meshids::Ptr{Cint}
    meshnames::Ptr{Cstring}
    meshtypes::Ptr{Cint}
    dirids::Ptr{Cint}
    blockorigin::Cint
    grouporigin::Cint
    extentssize::Cint
    extents::Ptr{Cdouble}
    zonecounts::Ptr{Cint}
    has_external_zones::Ptr{Cint}
    guihide::Cint
    lgroupings::Cint
    groupings::Ptr{Cint}
    groupnames::Ptr{Cstring}
    mrgtree_name::Cstring
    tv_connectivity::Cint
    disjoint_mode::Cint
    topo_dim::Cint
    file_ns::Cstring
    block_ns::Cstring
    block_type::Cint
    empty_list::Ptr{Cint}
    empty_cnt::Cint
    repr_block_idx::Cint
    alt_nodenum_vars::Ptr{Cstring}
    alt_zonenum_vars::Ptr{Cstring}
    meshnames_alloc::Cstring
end

typealias DBmultimesh Void

type DBmultimeshadj_
    nblocks::Cint
    blockorigin::Cint
    meshtypes::Ptr{Cint}
    nneighbors::Ptr{Cint}
    lneighbors::Cint
    neighbors::Ptr{Cint}
    back::Ptr{Cint}
    totlnodelists::Cint
    lnodelists::Ptr{Cint}
    nodelists::Ptr{Ptr{Cint}}
    totlzonelists::Cint
    lzonelists::Ptr{Cint}
    zonelists::Ptr{Ptr{Cint}}
end

typealias DBmultimeshadj Void

type DBmultivar_
    id::Cint
    nvars::Cint
    ngroups::Cint
    varnames::Ptr{Cstring}
    vartypes::Ptr{Cint}
    blockorigin::Cint
    grouporigin::Cint
    extentssize::Cint
    extents::Ptr{Cdouble}
    guihide::Cint
    region_pnames::Ptr{Cstring}
    mmesh_name::Cstring
    tensor_rank::Cint
    conserved::Cint
    extensive::Cint
    file_ns::Cstring
    block_ns::Cstring
    block_type::Cint
    empty_list::Ptr{Cint}
    empty_cnt::Cint
    repr_block_idx::Cint
    missing_value::Cdouble
    varnames_alloc::Cstring
end

typealias DBmultivar Void

type DBmultimat_
    id::Cint
    nmats::Cint
    ngroups::Cint
    matnames::Ptr{Cstring}
    blockorigin::Cint
    grouporigin::Cint
    mixlens::Ptr{Cint}
    matcounts::Ptr{Cint}
    matlists::Ptr{Cint}
    guihide::Cint
    nmatnos::Cint
    matnos::Ptr{Cint}
    matcolors::Ptr{Cstring}
    material_names::Ptr{Cstring}
    allowmat0::Cint
    mmesh_name::Cstring
    file_ns::Cstring
    block_ns::Cstring
    empty_list::Ptr{Cint}
    empty_cnt::Cint
    repr_block_idx::Cint
    matnames_alloc::Cstring
end

typealias DBmultimat Void

type DBmultimatspecies_
    id::Cint
    nspec::Cint
    ngroups::Cint
    specnames::Ptr{Cstring}
    blockorigin::Cint
    grouporigin::Cint
    guihide::Cint
    nmat::Cint
    nmatspec::Ptr{Cint}
    species_names::Ptr{Cstring}
    speccolors::Ptr{Cstring}
    file_ns::Cstring
    block_ns::Cstring
    empty_list::Ptr{Cint}
    empty_cnt::Cint
    repr_block_idx::Cint
    specnames_alloc::Cstring
end

typealias DBmultimatspecies Void

type DBzonelist_
    ndims::Cint
    nzones::Cint
    nshapes::Cint
    shapecnt::Ptr{Cint}
    shapesize::Ptr{Cint}
    shapetype::Ptr{Cint}
    nodelist::Ptr{Cint}
    lnodelist::Cint
    origin::Cint
    min_index::Cint
    max_index::Cint
    zoneno::Ptr{Cint}
    gzoneno::Ptr{Void}
    gnznodtype::Cint
    ghost_zone_labels::Cstring
    alt_zonenum_vars::Ptr{Cstring}
end

typealias DBzonelist Void

type DBphzonelist_
    nfaces::Cint
    nodecnt::Ptr{Cint}
    lnodelist::Cint
    nodelist::Ptr{Cint}
    extface::Cstring
    nzones::Cint
    facecnt::Ptr{Cint}
    lfacelist::Cint
    facelist::Ptr{Cint}
    origin::Cint
    lo_offset::Cint
    hi_offset::Cint
    zoneno::Ptr{Cint}
    gzoneno::Ptr{Void}
    gnznodtype::Cint
    ghost_zone_labels::Cstring
    alt_zonenum_vars::Ptr{Cstring}
end

typealias DBphzonelist Void

type DBfacelist_
    ndims::Cint
    nfaces::Cint
    origin::Cint
    nodelist::Ptr{Cint}
    lnodelist::Cint
    nshapes::Cint
    shapecnt::Ptr{Cint}
    shapesize::Ptr{Cint}
    ntypes::Cint
    typelist::Ptr{Cint}
    types::Ptr{Cint}
    nodeno::Ptr{Cint}
    zoneno::Ptr{Cint}
end

typealias DBfacelist Void

type DBedgelist_
    ndims::Cint
    nedges::Cint
    edge_beg::Ptr{Cint}
    edge_end::Ptr{Cint}
    origin::Cint
end

typealias DBedgelist Void

type DBquadmesh_
    id::Cint
    block_no::Cint
    group_no::Cint
    name::Cstring
    cycle::Cint
    coord_sys::Cint
    major_order::Cint
    stride::NTuple{3,Cint}
    coordtype::Cint
    facetype::Cint
    planar::Cint
    coords::NTuple{3,Ptr{Void}}
    datatype::Cint
    time::Cfloat
    dtime::Cdouble
    min_extents::NTuple{6,Cfloat}
    max_extents::NTuple{6,Cfloat}
    labels::NTuple{3,Cstring}
    units::NTuple{3,Cstring}
    ndims::Cint
    nspace::Cint
    nnodes::Cint
    dims::NTuple{3,Cint}
    origin::Cint
    min_index::NTuple{3,Cint}
    max_index::NTuple{3,Cint}
    base_index::NTuple{3,Cint}
    start_index::NTuple{3,Cint}
    size_index::NTuple{3,Cint}
    guihide::Cint
    mrgtree_name::Cstring
    ghost_node_labels::Cstring
    ghost_zone_labels::Cstring
    alt_nodenum_vars::Ptr{Cstring}
    alt_zonenum_vars::Ptr{Cstring}
end

typealias DBquadmesh Void

type DBucdmesh_
    id::Cint
    block_no::Cint
    group_no::Cint
    name::Cstring
    cycle::Cint
    coord_sys::Cint
    topo_dim::Cint
    units::NTuple{3,Cstring}
    labels::NTuple{3,Cstring}
    coords::NTuple{3,Ptr{Void}}
    datatype::Cint
    time::Cfloat
    dtime::Cdouble
    min_extents::NTuple{6,Cfloat}
    max_extents::NTuple{6,Cfloat}
    ndims::Cint
    nnodes::Cint
    origin::Cint
    faces::Ptr{DBfacelist}
    zones::Ptr{DBzonelist}
    edges::Ptr{DBedgelist}
    gnodeno::Ptr{Void}
    nodeno::Ptr{Cint}
    phzones::Ptr{DBphzonelist}
    guihide::Cint
    mrgtree_name::Cstring
    tv_connectivity::Cint
    disjoint_mode::Cint
    gnznodtype::Cint
    ghost_node_labels::Cstring
    alt_nodenum_vars::Ptr{Cstring}
end

typealias DBucdmesh Void

type DBquadvar_
    id::Cint
    name::Cstring
    units::Cstring
    label::Cstring
    cycle::Cint
    meshid::Cint
    vals::Ptr{Ptr{Void}}
    datatype::Cint
    nels::Cint
    nvals::Cint
    ndims::Cint
    dims::NTuple{3,Cint}
    major_order::Cint
    stride::NTuple{3,Cint}
    min_index::NTuple{3,Cint}
    max_index::NTuple{3,Cint}
    origin::Cint
    time::Cfloat
    dtime::Cdouble
    align::NTuple{6,Cfloat}
    mixvals::Ptr{Ptr{Void}}
    mixlen::Cint
    use_specmf::Cint
    ascii_labels::Cint
    meshname::Cstring
    guihide::Cint
    region_pnames::Ptr{Cstring}
    conserved::Cint
    extensive::Cint
    centering::Cint
    missing_value::Cdouble
end

typealias DBquadvar Void

type DBucdvar_
    id::Cint
    name::Cstring
    cycle::Cint
    units::Cstring
    label::Cstring
    time::Cfloat
    dtime::Cdouble
    meshid::Cint
    vals::Ptr{Ptr{Void}}
    datatype::Cint
    nels::Cint
    nvals::Cint
    ndims::Cint
    origin::Cint
    centering::Cint
    mixvals::Ptr{Ptr{Void}}
    mixlen::Cint
    use_specmf::Cint
    ascii_labels::Cint
    meshname::Cstring
    guihide::Cint
    region_pnames::Ptr{Cstring}
    conserved::Cint
    extensive::Cint
    missing_value::Cdouble
end

typealias DBucdvar Void

type DBmeshvar_
    id::Cint
    name::Cstring
    units::Cstring
    label::Cstring
    cycle::Cint
    meshid::Cint
    vals::Ptr{Ptr{Void}}
    datatype::Cint
    nels::Cint
    nvals::Cint
    nspace::Cint
    ndims::Cint
    origin::Cint
    centering::Cint
    time::Cfloat
    dtime::Cdouble
    align::NTuple{6,Cfloat}
    dims::NTuple{3,Cint}
    major_order::Cint
    stride::NTuple{3,Cint}
    min_index::NTuple{6,Cint}
    max_index::NTuple{6,Cint}
    ascii_labels::Cint
    meshname::Cstring
    guihide::Cint
    region_pnames::Ptr{Cstring}
    conserved::Cint
    extensive::Cint
    missing_value::Cdouble
end

typealias DBmeshvar Void
typealias DBpointvar DBmeshvar

type DBmaterial_
    id::Cint
    name::Cstring
    ndims::Cint
    origin::Cint
    dims::NTuple{3,Cint}
    major_order::Cint
    stride::NTuple{3,Cint}
    nmat::Cint
    matnos::Ptr{Cint}
    matnames::Ptr{Cstring}
    matlist::Ptr{Cint}
    mixlen::Cint
    datatype::Cint
    mix_vf::Ptr{Void}
    mix_next::Ptr{Cint}
    mix_mat::Ptr{Cint}
    mix_zone::Ptr{Cint}
    matcolors::Ptr{Cstring}
    meshname::Cstring
    allowmat0::Cint
    guihide::Cint
end

typealias DBmaterial Void

type DBmatspecies_
    id::Cint
    name::Cstring
    matname::Cstring
    nmat::Cint
    nmatspec::Ptr{Cint}
    ndims::Cint
    dims::NTuple{3,Cint}
    major_order::Cint
    stride::NTuple{3,Cint}
    nspecies_mf::Cint
    species_mf::Ptr{Void}
    speclist::Ptr{Cint}
    mixlen::Cint
    mix_speclist::Ptr{Cint}
    datatype::Cint
    guihide::Cint
    specnames::Ptr{Cstring}
    speccolors::Ptr{Cstring}
end

typealias DBmatspecies Void

type DBcsgzonelist_
    nregs::Cint
    origin::Cint
    typeflags::Ptr{Cint}
    leftids::Ptr{Cint}
    rightids::Ptr{Cint}
    xform::Ptr{Void}
    lxform::Cint
    datatype::Cint
    nzones::Cint
    zonelist::Ptr{Cint}
    min_index::Cint
    max_index::Cint
    regnames::Ptr{Cstring}
    zonenames::Ptr{Cstring}
    alt_zonenum_vars::Ptr{Cstring}
end

typealias DBcsgzonelist Void

type DBcsgmesh_
    block_no::Cint
    group_no::Cint
    name::Cstring
    cycle::Cint
    units::NTuple{3,Cstring}
    labels::NTuple{3,Cstring}
    nbounds::Cint
    typeflags::Ptr{Cint}
    bndids::Ptr{Cint}
    coeffs::Ptr{Void}
    lcoeffs::Cint
    coeffidx::Ptr{Cint}
    datatype::Cint
    time::Cfloat
    dtime::Cdouble
    min_extents::NTuple{3,Cdouble}
    max_extents::NTuple{3,Cdouble}
    ndims::Cint
    origin::Cint
    zones::Ptr{DBcsgzonelist}
    bndnames::Ptr{Cstring}
    guihide::Cint
    mrgtree_name::Cstring
    tv_connectivity::Cint
    disjoint_mode::Cint
    alt_nodenum_vars::Ptr{Cstring}
end

typealias DBcsgmesh Void

type DBcsgvar_
    name::Cstring
    cycle::Cint
    units::Cstring
    label::Cstring
    time::Cfloat
    dtime::Cdouble
    vals::Ptr{Ptr{Void}}
    datatype::Cint
    nels::Cint
    nvals::Cint
    centering::Cint
    use_specmf::Cint
    ascii_labels::Cint
    meshname::Cstring
    guihide::Cint
    region_pnames::Ptr{Cstring}
    conserved::Cint
    extensive::Cint
    missing_value::Cdouble
end

typealias DBcsgvar Void

type DBcompoundarray_
    id::Cint
    name::Cstring
    elemnames::Ptr{Cstring}
    elemlengths::Ptr{Cint}
    nelems::Cint
    values::Ptr{Void}
    nvalues::Cint
    datatype::Cint
end

typealias DBcompoundarray Void

type DBoptlist_
    options::Ptr{Cint}
    values::Ptr{Ptr{Void}}
    numopts::Cint
    maxopts::Cint
end

typealias DBoptlist Void

type DBobject_
    name::Cstring
    _type::Cstring
    comp_names::Ptr{Cstring}
    pdb_names::Ptr{Cstring}
    ncomponents::Cint
    maxcomponents::Cint
    h5_vals::NTuple{1536,UInt8}
    h5_offs::NTuple{64,Cint}
    h5_sizes::NTuple{64,Cint}
    h5_types::NTuple{64,Cint}
    h5_names::NTuple{64,Cstring}
end

typealias DBobject Void

type _DBmrgtnode
    name::Cstring
    narray::Cint
    names::Ptr{Cstring}
    type_info_bits::Cint
    max_children::Cint
    maps_name::Cstring
    nsegs::Cint
    seg_ids::Ptr{Cint}
    seg_lens::Ptr{Cint}
    seg_types::Ptr{Cint}
    num_children::Cint
    children::Ptr{Ptr{Void}}
    walk_order::Cint
    parent::Ptr{Void}
end

typealias DBmrgtnode Void
typealias DBmrgwalkcb Ptr{Void}

type _DBmrgtree
    name::Cstring
    src_mesh_name::Cstring
    src_mesh_type::Cint
    type_info_bits::Cint
    num_nodes::Cint
    root::Ptr{DBmrgtnode}
    cwr::Ptr{DBmrgtnode}
    mrgvar_onames::Ptr{Cstring}
    mrgvar_rnames::Ptr{Cstring}
end

typealias DBmrgtree Void

type _DBmrgvar
    name::Cstring
    mrgt_name::Cstring
    ncomps::Cint
    compnames::Ptr{Cstring}
    nregns::Cint
    reg_pnames::Ptr{Cstring}
    datatype::Cint
    data::Ptr{Ptr{Void}}
end

typealias DBmrgvar Void

type _DBgroupelmap
    name::Cstring
    num_segments::Cint
    groupel_types::Ptr{Cint}
    segment_lengths::Ptr{Cint}
    segment_ids::Ptr{Cint}
    segment_data::Ptr{Ptr{Cint}}
    segment_fracs::Ptr{Ptr{Void}}
    fracs_data_type::Cint
end

typealias DBgroupelmap Void

type _DBnamescheme
    fmt::Cstring
    fmtptrs::Ptr{Cstring}
    fmtlen::Cint
    ncspecs::Cint
    delim::UInt8
    nembed::Cint
    embedstrs::NTuple{8,Cstring}
    arralloc::Cint
    narrefs::Cint
    arrnames::Ptr{Cstring}
    arrvals::Ptr{Ptr{Void}}
    arrsizes::Ptr{Cint}
    exprstrs::Ptr{Cstring}
end

typealias DBnamescheme Void

type DBfile_pub
    name::Cstring
    _type::Cint
    toc::Ptr{DBtoc}
    dirid::Cint
    fileid::Cint
    pathok::Cint
    Grab::Cint
    GrabId::Ptr{Void}
    file_lib_version::Cstring
    close::Ptr{Void}
    exist::Ptr{Void}
    newtoc::Ptr{Void}
    inqvartype::Ptr{Void}
    uninstall::Ptr{Void}
    g_obj::Ptr{Void}
    c_obj::Ptr{Void}
    w_obj::Ptr{Void}
    g_comp::Ptr{Void}
    g_comptyp::Ptr{Void}
    w_comp::Ptr{Void}
    write::Ptr{Void}
    writeslice::Ptr{Void}
    g_dir::Ptr{Void}
    mkdir::Ptr{Void}
    cd::Ptr{Void}
    r_var::Ptr{Void}
    _module::Ptr{Void}
    r_varslice::Ptr{Void}
    g_compnames::Ptr{Void}
    g_ca::Ptr{Void}
    g_cu::Ptr{Void}
    g_defv::Ptr{Void}
    g_ma::Ptr{Void}
    g_ms::Ptr{Void}
    g_mm::Ptr{Void}
    g_mv::Ptr{Void}
    g_mt::Ptr{Void}
    g_mms::Ptr{Void}
    g_pm::Ptr{Void}
    g_pv::Ptr{Void}
    g_qm::Ptr{Void}
    g_qv::Ptr{Void}
    g_um::Ptr{Void}
    g_uv::Ptr{Void}
    g_fl::Ptr{Void}
    g_zl::Ptr{Void}
    g_var::Ptr{Void}
    g_varbl::Ptr{Void}
    g_varlen::Ptr{Void}
    g_vardims::Ptr{Void}
    g_vartype::Ptr{Void}
    i_meshname::Ptr{Void}
    i_meshtype::Ptr{Void}
    p_ca::Ptr{Void}
    p_cu::Ptr{Void}
    p_defv::Ptr{Void}
    p_fl::Ptr{Void}
    p_ma::Ptr{Void}
    p_ms::Ptr{Void}
    p_mm::Ptr{Void}
    p_mv::Ptr{Void}
    p_mt::Ptr{Void}
    p_mms::Ptr{Void}
    p_pm::Ptr{Void}
    p_pv::Ptr{Void}
    p_qm::Ptr{Void}
    p_qv::Ptr{Void}
    p_um::Ptr{Void}
    p_sm::Ptr{Void}
    p_uv::Ptr{Void}
    p_zl::Ptr{Void}
    p_zl2::Ptr{Void}
    g_phzl::Ptr{Void}
    p_phzl::Ptr{Void}
    p_csgzl::Ptr{Void}
    g_csgzl::Ptr{Void}
    p_csgm::Ptr{Void}
    g_csgm::Ptr{Void}
    p_csgv::Ptr{Void}
    g_csgv::Ptr{Void}
    g_mmadj::Ptr{Void}
    p_mmadj::Ptr{Void}
    p_mrgt::Ptr{Void}
    g_mrgt::Ptr{Void}
    p_grplm::Ptr{Void}
    g_grplm::Ptr{Void}
    p_mrgv::Ptr{Void}
    g_mrgv::Ptr{Void}
    free_z::Ptr{Void}
    cpdir::Ptr{Void}
    sort_obo::Ptr{Void}
end

type DBfile
    pub::DBfile_pub
end

typealias DBErrFunc_t Ptr{Void}

# Skipping MacroDefinition: SIG_DFL ( void ( * ) ( int ) )
# Skipping MacroDefinition: SIG_IGN ( void ( * ) ( int ) )
# Skipping MacroDefinition: SIG_HOLD ( void ( * ) ( int ) )
# Skipping MacroDefinition: SIG_ERR ( ( void ( * ) ( int ) ) - 1

# const sa_handler = __sigaction_u
# const sa_sigaction = __sigaction_u

# Skipping MacroDefinition: SA_USERSPACE_MASK ( SA_ONSTACK | SA_RESTART | SA_RESETHAND | SA_NOCLDSTOP | SA_NODEFER | SA_NOCLDWAIT | SA_SIGINFO
# Skipping MacroDefinition: sigmask ( m ) ( 1 << ( ( m ) - 1 )

# const INT8_MIN = (-)
# const INT16_MIN = (-)

# Skipping MacroDefinition: INT32_MIN ( - INT32_MAX - 1
# Skipping MacroDefinition: INT64_MIN ( - INT64_MAX - 1
# Skipping MacroDefinition: RSIZE_MAX ( SIZE_MAX >> 1
# Skipping MacroDefinition: WCHAR_MIN ( - WCHAR_MAX - 1
# Skipping MacroDefinition: INT8_C ( v ) ( v
# Skipping MacroDefinition: INT16_C ( v ) ( v
# Skipping MacroDefinition: INT32_C ( v ) ( v
# Skipping MacroDefinition: INT64_C ( v ) ( v ## LL
# Skipping MacroDefinition: UINT8_C ( v ) ( v ## U
# Skipping MacroDefinition: UINT16_C ( v ) ( v ## U
# Skipping MacroDefinition: UINT32_C ( v ) ( v ## U
# Skipping MacroDefinition: UINT64_C ( v ) ( v ## ULL
# Skipping MacroDefinition: INTMAX_C ( v ) ( v ## L
# Skipping MacroDefinition: UINTMAX_C ( v ) ( v ## UL

# const PRIO_MIN = (-)
# const RUSAGE_CHILDREN = (-)

# Skipping MacroDefinition: RLIM_INFINITY ( ( ( __uint64_t ) 1 << 63 ) - 1
# Skipping MacroDefinition: WEXITSTATUS ( x ) ( ( _W_INT ( x ) >> 8 ) & 0x000000ff
# Skipping MacroDefinition: WSTOPSIG ( x ) ( _W_INT ( x ) >> 8
# Skipping MacroDefinition: WIFCONTINUED ( x ) ( _WSTATUS ( x ) == _WSTOPPED && WSTOPSIG ( x ) == 0x13
# Skipping MacroDefinition: WIFSTOPPED ( x ) ( _WSTATUS ( x ) == _WSTOPPED && WSTOPSIG ( x ) != 0x13
# Skipping MacroDefinition: WIFEXITED ( x ) ( _WSTATUS ( x ) == 0
# Skipping MacroDefinition: WIFSIGNALED ( x ) ( _WSTATUS ( x ) != _WSTOPPED && _WSTATUS ( x ) != 0
# Skipping MacroDefinition: WTERMSIG ( x ) ( _WSTATUS ( x )
# Skipping MacroDefinition: WCOREDUMP ( x ) ( _W_INT ( x ) & WCOREFLAG
# Skipping MacroDefinition: W_EXITCODE ( ret , sig ) ( ( ret ) << 8 | ( sig )
# Skipping MacroDefinition: W_STOPCODE ( sig ) ( ( sig ) << 8 | _WSTOPPED
# Skipping MacroDefinition: WAIT_ANY ( - 1
# Skipping MacroDefinition: ntohs ( x ) __DARWIN_OSSwapInt16 ( x
# Skipping MacroDefinition: htons ( x ) __DARWIN_OSSwapInt16 ( x
# Skipping MacroDefinition: ntohl ( x ) __DARWIN_OSSwapInt32 ( x
# Skipping MacroDefinition: htonl ( x ) __DARWIN_OSSwapInt32 ( x
# Skipping MacroDefinition: ntohll ( x ) __DARWIN_OSSwapInt64 ( x
# Skipping MacroDefinition: htonll ( x ) __DARWIN_OSSwapInt64 ( x
# Skipping MacroDefinition: NTOHL ( x ) ( x ) = ntohl ( ( __uint32_t ) x
# Skipping MacroDefinition: NTOHS ( x ) ( x ) = ntohs ( ( __uint16_t ) x
# Skipping MacroDefinition: NTOHLL ( x ) ( x ) = ntohll ( ( __uint64_t ) x
# Skipping MacroDefinition: HTONL ( x ) ( x ) = htonl ( ( __uint32_t ) x
# Skipping MacroDefinition: HTONS ( x ) ( x ) = htons ( ( __uint16_t ) x
# Skipping MacroDefinition: HTONLL ( x ) ( x ) = htonll ( ( __uint64_t ) x

# const w_termsig = w_T
# const w_coredump = w_T
# const w_retcode = w_T
# const w_stopval = w_S
# const w_stopsig = w_S

# Skipping MacroDefinition: alloca ( size ) __alloca ( size
# Skipping MacroDefinition: USER_ADDR_NULL ( ( user_addr_t ) 0
# Skipping MacroDefinition: CAST_USER_ADDR_T ( a_ptr ) ( ( user_addr_t ) ( ( uintptr_t ) ( a_ptr ) )

# begin enum ANONYMOUS_3
typealias ANONYMOUS_3 UInt32
const P_ALL = (UInt32)(0)
const P_PID = (UInt32)(1)
const P_PGID = (UInt32)(2)
# end enum ANONYMOUS_3

# typealias idtype_t Void
# typealias pid_t Cint
# typealias id_t Cint
# typealias sig_atomic_t Cint
# typealias mcontext_t Ptr{Void}
# typealias pthread_attr_t __darwin_pthread_attr_t
# typealias stack_t Void
# typealias ucontext_t Void
# typealias sigset_t __darwin_sigset_t
# typealias uid_t __darwin_uid_t
#
# type sigval
#     _sigval::Cint
# end
#
# type sigevent
#     sigev_notify::Cint
#     sigev_signo::Cint
#     sigev_value::Void
#     sigev_notify_function::Ptr{Void}
#     sigev_notify_attributes::Ptr{pthread_attr_t}
# end
#
# typealias siginfo_t Void
#
# type sigaction
#     __sigaction_u::Void
#     sa_mask::sigset_t
#     sa_flags::Cint
# end
#
# typealias sig_t Ptr{Void}
#
# type sigvec
#     sv_handler::Ptr{Void}
#     sv_mask::Cint
#     sv_flags::Cint
# end
#
# type sigstack
#     ss_sp::Cstring
#     ss_onstack::Cint
# end

typealias int8_t UInt8
typealias int16_t Int16
typealias int32_t Cint
typealias int64_t Clonglong
typealias uint8_t Cuchar
typealias uint16_t UInt16
typealias uint32_t UInt32
typealias uint64_t Culonglong
typealias int_least8_t Int8
typealias int_least16_t Int16
typealias int_least32_t Int32
typealias int_least64_t Int64
typealias uint_least8_t UInt8
typealias uint_least16_t UInt16
typealias uint_least32_t UInt32
typealias uint_least64_t UInt64
typealias int_fast8_t Int8
typealias int_fast16_t Int16
typealias int_fast32_t Int32
typealias int_fast64_t Int64
typealias uint_fast8_t UInt8
typealias uint_fast16_t UInt16
typealias uint_fast32_t UInt32
typealias uint_fast64_t UInt64
# typealias intptr_t __darwin_intptr_t
typealias uintptr_t Culong
typealias intmax_t Clong
typealias uintmax_t Culong

# type timeval
#     tv_sec::__darwin_time_t
#     tv_usec::__darwin_suseconds_t
# end

# typealias rlim_t __uint64_t

type rusage
    ru_utime::Void
    ru_stime::Void
    ru_maxrss::Clong
    ru_ixrss::Clong
    ru_idrss::Clong
    ru_isrss::Clong
    ru_minflt::Clong
    ru_majflt::Clong
    ru_nswap::Clong
    ru_inblock::Clong
    ru_oublock::Clong
    ru_msgsnd::Clong
    ru_msgrcv::Clong
    ru_nsignals::Clong
    ru_nvcsw::Clong
    ru_nivcsw::Clong
end

typealias rusage_info_t Ptr{Void}

type rusage_info_v0
    ri_uuid::NTuple{16,UInt8}
    ri_user_time::UInt64
    ri_system_time::UInt64
    ri_pkg_idle_wkups::UInt64
    ri_interrupt_wkups::UInt64
    ri_pageins::UInt64
    ri_wired_size::UInt64
    ri_resident_size::UInt64
    ri_phys_footprint::UInt64
    ri_proc_start_abstime::UInt64
    ri_proc_exit_abstime::UInt64
end

type rusage_info_v1
    ri_uuid::NTuple{16,UInt8}
    ri_user_time::UInt64
    ri_system_time::UInt64
    ri_pkg_idle_wkups::UInt64
    ri_interrupt_wkups::UInt64
    ri_pageins::UInt64
    ri_wired_size::UInt64
    ri_resident_size::UInt64
    ri_phys_footprint::UInt64
    ri_proc_start_abstime::UInt64
    ri_proc_exit_abstime::UInt64
    ri_child_user_time::UInt64
    ri_child_system_time::UInt64
    ri_child_pkg_idle_wkups::UInt64
    ri_child_interrupt_wkups::UInt64
    ri_child_pageins::UInt64
    ri_child_elapsed_abstime::UInt64
end

type rusage_info_v2
    ri_uuid::NTuple{16,UInt8}
    ri_user_time::UInt64
    ri_system_time::UInt64
    ri_pkg_idle_wkups::UInt64
    ri_interrupt_wkups::UInt64
    ri_pageins::UInt64
    ri_wired_size::UInt64
    ri_resident_size::UInt64
    ri_phys_footprint::UInt64
    ri_proc_start_abstime::UInt64
    ri_proc_exit_abstime::UInt64
    ri_child_user_time::UInt64
    ri_child_system_time::UInt64
    ri_child_pkg_idle_wkups::UInt64
    ri_child_interrupt_wkups::UInt64
    ri_child_pageins::UInt64
    ri_child_elapsed_abstime::UInt64
    ri_diskio_bytesread::UInt64
    ri_diskio_byteswritten::UInt64
end

type rusage_info_v3
    ri_uuid::NTuple{16,UInt8}
    ri_user_time::UInt64
    ri_system_time::UInt64
    ri_pkg_idle_wkups::UInt64
    ri_interrupt_wkups::UInt64
    ri_pageins::UInt64
    ri_wired_size::UInt64
    ri_resident_size::UInt64
    ri_phys_footprint::UInt64
    ri_proc_start_abstime::UInt64
    ri_proc_exit_abstime::UInt64
    ri_child_user_time::UInt64
    ri_child_system_time::UInt64
    ri_child_pkg_idle_wkups::UInt64
    ri_child_interrupt_wkups::UInt64
    ri_child_pageins::UInt64
    ri_child_elapsed_abstime::UInt64
    ri_diskio_bytesread::UInt64
    ri_diskio_byteswritten::UInt64
    ri_cpu_time_qos_default::UInt64
    ri_cpu_time_qos_maintenance::UInt64
    ri_cpu_time_qos_background::UInt64
    ri_cpu_time_qos_utility::UInt64
    ri_cpu_time_qos_legacy::UInt64
    ri_cpu_time_qos_user_initiated::UInt64
    ri_cpu_time_qos_user_interactive::UInt64
    ri_billed_system_time::UInt64
    ri_serviced_system_time::UInt64
end

typealias rusage_info_current Void

# type rlimit
#     rlim_cur::rlim_t
#     rlim_max::rlim_t
# end

type proc_rlimit_control_wakeupmon
    wm_flags::UInt32
    wm_rate::Int32
end

type wait
    _wait::Cint
end

# typealias ct_rune_t __darwin_ct_rune_t
# typealias rune_t __darwin_rune_t
# typealias wchar_t __darwin_wchar_t
typealias div_t Void
typealias ldiv_t Void
typealias lldiv_t Void
typealias u_int8_t Cuchar
typealias u_int16_t UInt16
typealias u_int32_t UInt32
typealias u_int64_t Culonglong
typealias register_t Int64
typealias user_addr_t u_int64_t
typealias user_size_t u_int64_t
typealias user_ssize_t Int64
typealias user_long_t Int64
typealias user_ulong_t u_int64_t
typealias user_time_t Int64
typealias user_off_t Int64
typealias syscall_arg_t u_int64_t
# typealias dev_t __darwin_dev_t
# typealias mode_t __darwin_mode_t

# begin enum ANONYMOUS_4
typealias ANONYMOUS_4 UInt32
const PMPIO_READ = (UInt32)(1)
const PMPIO_WRITE = (UInt32)(3)
# end enum ANONYMOUS_4

typealias PMPIO_iomode_t Void
typealias PMPIO_CreateFileCallBack Ptr{Void}
typealias PMPIO_OpenFileCallBack Ptr{Void}
typealias PMPIO_CloseFileCallBack Ptr{Void}

type _PMPIO_baton_t
    ioMode::PMPIO_iomode_t
    commSize::Cint
    rankInComm::Cint
    numGroups::Cint
    groupSize::Cint
    numGroupsWithExtraProc::Cint
    commSplit::Cint
    groupRank::Cint
    rankInGroup::Cint
    procBeforeMe::Cint
    procAfterMe::Cint
    mpiVal::Cint
    mpiTag::Cint
    mpiComm::Cint
    createCb::PMPIO_CreateFileCallBack
    openCb::PMPIO_OpenFileCallBack
    closeCb::PMPIO_CloseFileCallBack
    userData::Ptr{Void}
end

typealias PMPIO_baton_t Void
