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
#     __cleanup_stack::Ptr{Nothing}
#     __opaque::NTuple{8176,UInt8}
# end

# const va_list = __darwin_va_list
# const size_t = __darwin_size_t
# const fpos_t = __darwin_off_t
# const FILE = Nothing
# const off_t = __darwin_off_t
# const ssize_t = __darwin_ssize_t
# const DBVCP1_t = Ptr{Nothing}
# const DBVCP2_t = Ptr{Nothing}
# const DBVCP3_t = Ptr{Nothing}
# const DBCAS_t = Ptr{Cstring}

# begin enum ANONYMOUS_1
const ANONYMOUS_1 = Cint
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

const DBObjectType = Nothing

# begin enum ANONYMOUS_2
const ANONYMOUS_2 = UInt32
const DB_INT = (UInt32)(16)
const DB_SHORT = (UInt32)(17)
const DB_LONG = (UInt32)(18)
const DB_FLOAT = (UInt32)(19)
const DB_DOUBLE = (UInt32)(20)
const DB_CHAR = (UInt32)(21)
const DB_LONG_LONG = (UInt32)(22)
const DB_NOTYPE = (UInt32)(25)
# end enum ANONYMOUS_2

const DBdatatype = Nothing

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

const DBtoc = Nothing

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
    x::Ptr{Nothing}
    y::Ptr{Nothing}
    npts::Cint
    guihide::Cint
    reference::Cstring
    coord_sys::Cint
    missing_value::Cdouble
end

const DBcurve = Nothing

type DBdefvars_
    ndefs::Cint
    names::Ptr{Cstring}
    types::Ptr{Cint}
    defns::Ptr{Cstring}
    guihides::Ptr{Cint}
end

const DBdefvars = Nothing

type DBpointmesh_
    id::Cint
    block_no::Cint
    group_no::Cint
    name::Cstring
    cycle::Cint
    units::NTuple{3,Cstring}
    labels::NTuple{3,Cstring}
    title::Cstring
    coords::NTuple{3,Ptr{Nothing}}
    time::Cfloat
    dtime::Cdouble
    min_extents::NTuple{6,Cfloat}
    max_extents::NTuple{6,Cfloat}
    datatype::Cint
    ndims::Cint
    nels::Cint
    origin::Cint
    guihide::Cint
    gnodeno::Ptr{Nothing}
    mrgtree_name::Cstring
    gnznodtype::Cint
    ghost_node_labels::Cstring
    alt_nodenum_vars::Ptr{Cstring}
end

const DBpointmesh = Nothing

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

const DBmultimesh = Nothing

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

const DBmultimeshadj = Nothing

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

const DBmultivar = Nothing

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

const DBmultimat = Nothing

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

const DBmultimatspecies = Nothing

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
    gzoneno::Ptr{Nothing}
    gnznodtype::Cint
    ghost_zone_labels::Cstring
    alt_zonenum_vars::Ptr{Cstring}
end

const DBzonelist = Nothing

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
    gzoneno::Ptr{Nothing}
    gnznodtype::Cint
    ghost_zone_labels::Cstring
    alt_zonenum_vars::Ptr{Cstring}
end

const DBphzonelist = Nothing

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

const DBfacelist = Nothing

type DBedgelist_
    ndims::Cint
    nedges::Cint
    edge_beg::Ptr{Cint}
    edge_end::Ptr{Cint}
    origin::Cint
end

const DBedgelist = Nothing

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
    coords::NTuple{3,Ptr{Nothing}}
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

const DBquadmesh = Nothing

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
    coords::NTuple{3,Ptr{Nothing}}
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
    gnodeno::Ptr{Nothing}
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

const DBucdmesh = Nothing

type DBquadvar_
    id::Cint
    name::Cstring
    units::Cstring
    label::Cstring
    cycle::Cint
    meshid::Cint
    vals::Ptr{Ptr{Nothing}}
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
    mixvals::Ptr{Ptr{Nothing}}
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

const DBquadvar = Nothing

type DBucdvar_
    id::Cint
    name::Cstring
    cycle::Cint
    units::Cstring
    label::Cstring
    time::Cfloat
    dtime::Cdouble
    meshid::Cint
    vals::Ptr{Ptr{Nothing}}
    datatype::Cint
    nels::Cint
    nvals::Cint
    ndims::Cint
    origin::Cint
    centering::Cint
    mixvals::Ptr{Ptr{Nothing}}
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

const DBucdvar = Nothing

type DBmeshvar_
    id::Cint
    name::Cstring
    units::Cstring
    label::Cstring
    cycle::Cint
    meshid::Cint
    vals::Ptr{Ptr{Nothing}}
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

const DBmeshvar = Nothing
const DBpointvar = DBmeshvar

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
    mix_vf::Ptr{Nothing}
    mix_next::Ptr{Cint}
    mix_mat::Ptr{Cint}
    mix_zone::Ptr{Cint}
    matcolors::Ptr{Cstring}
    meshname::Cstring
    allowmat0::Cint
    guihide::Cint
end

const DBmaterial = Nothing

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
    species_mf::Ptr{Nothing}
    speclist::Ptr{Cint}
    mixlen::Cint
    mix_speclist::Ptr{Cint}
    datatype::Cint
    guihide::Cint
    specnames::Ptr{Cstring}
    speccolors::Ptr{Cstring}
end

const DBmatspecies = Nothing

type DBcsgzonelist_
    nregs::Cint
    origin::Cint
    typeflags::Ptr{Cint}
    leftids::Ptr{Cint}
    rightids::Ptr{Cint}
    xform::Ptr{Nothing}
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

const DBcsgzonelist = Nothing

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
    coeffs::Ptr{Nothing}
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

const DBcsgmesh = Nothing

type DBcsgvar_
    name::Cstring
    cycle::Cint
    units::Cstring
    label::Cstring
    time::Cfloat
    dtime::Cdouble
    vals::Ptr{Ptr{Nothing}}
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

const DBcsgvar = Nothing

type DBcompoundarray_
    id::Cint
    name::Cstring
    elemnames::Ptr{Cstring}
    elemlengths::Ptr{Cint}
    nelems::Cint
    values::Ptr{Nothing}
    nvalues::Cint
    datatype::Cint
end

const DBcompoundarray = Nothing

type DBoptlist_
    options::Ptr{Cint}
    values::Ptr{Ptr{Nothing}}
    numopts::Cint
    maxopts::Cint
end

const DBoptlist = Nothing

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

const DBobject = Nothing

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
    children::Ptr{Ptr{Nothing}}
    walk_order::Cint
    parent::Ptr{Nothing}
end

const DBmrgtnode = Nothing
const DBmrgwalkcb = Ptr{Nothing}

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

const DBmrgtree = Nothing

type _DBmrgvar
    name::Cstring
    mrgt_name::Cstring
    ncomps::Cint
    compnames::Ptr{Cstring}
    nregns::Cint
    reg_pnames::Ptr{Cstring}
    datatype::Cint
    data::Ptr{Ptr{Nothing}}
end

const DBmrgvar = Nothing

type _DBgroupelmap
    name::Cstring
    num_segments::Cint
    groupel_types::Ptr{Cint}
    segment_lengths::Ptr{Cint}
    segment_ids::Ptr{Cint}
    segment_data::Ptr{Ptr{Cint}}
    segment_fracs::Ptr{Ptr{Nothing}}
    fracs_data_type::Cint
end

const DBgroupelmap = Nothing

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
    arrvals::Ptr{Ptr{Nothing}}
    arrsizes::Ptr{Cint}
    exprstrs::Ptr{Cstring}
end

const DBnamescheme = Nothing

type DBfile_pub
    name::Cstring
    _type::Cint
    toc::Ptr{DBtoc}
    dirid::Cint
    fileid::Cint
    pathok::Cint
    Grab::Cint
    GrabId::Ptr{Nothing}
    file_lib_version::Cstring
    close::Ptr{Nothing}
    exist::Ptr{Nothing}
    newtoc::Ptr{Nothing}
    inqvartype::Ptr{Nothing}
    uninstall::Ptr{Nothing}
    g_obj::Ptr{Nothing}
    c_obj::Ptr{Nothing}
    w_obj::Ptr{Nothing}
    g_comp::Ptr{Nothing}
    g_comptyp::Ptr{Nothing}
    w_comp::Ptr{Nothing}
    write::Ptr{Nothing}
    writeslice::Ptr{Nothing}
    g_dir::Ptr{Nothing}
    mkdir::Ptr{Nothing}
    cd::Ptr{Nothing}
    r_var::Ptr{Nothing}
    _module::Ptr{Nothing}
    r_varslice::Ptr{Nothing}
    g_compnames::Ptr{Nothing}
    g_ca::Ptr{Nothing}
    g_cu::Ptr{Nothing}
    g_defv::Ptr{Nothing}
    g_ma::Ptr{Nothing}
    g_ms::Ptr{Nothing}
    g_mm::Ptr{Nothing}
    g_mv::Ptr{Nothing}
    g_mt::Ptr{Nothing}
    g_mms::Ptr{Nothing}
    g_pm::Ptr{Nothing}
    g_pv::Ptr{Nothing}
    g_qm::Ptr{Nothing}
    g_qv::Ptr{Nothing}
    g_um::Ptr{Nothing}
    g_uv::Ptr{Nothing}
    g_fl::Ptr{Nothing}
    g_zl::Ptr{Nothing}
    g_var::Ptr{Nothing}
    g_varbl::Ptr{Nothing}
    g_varlen::Ptr{Nothing}
    g_vardims::Ptr{Nothing}
    g_vartype::Ptr{Nothing}
    i_meshname::Ptr{Nothing}
    i_meshtype::Ptr{Nothing}
    p_ca::Ptr{Nothing}
    p_cu::Ptr{Nothing}
    p_defv::Ptr{Nothing}
    p_fl::Ptr{Nothing}
    p_ma::Ptr{Nothing}
    p_ms::Ptr{Nothing}
    p_mm::Ptr{Nothing}
    p_mv::Ptr{Nothing}
    p_mt::Ptr{Nothing}
    p_mms::Ptr{Nothing}
    p_pm::Ptr{Nothing}
    p_pv::Ptr{Nothing}
    p_qm::Ptr{Nothing}
    p_qv::Ptr{Nothing}
    p_um::Ptr{Nothing}
    p_sm::Ptr{Nothing}
    p_uv::Ptr{Nothing}
    p_zl::Ptr{Nothing}
    p_zl2::Ptr{Nothing}
    g_phzl::Ptr{Nothing}
    p_phzl::Ptr{Nothing}
    p_csgzl::Ptr{Nothing}
    g_csgzl::Ptr{Nothing}
    p_csgm::Ptr{Nothing}
    g_csgm::Ptr{Nothing}
    p_csgv::Ptr{Nothing}
    g_csgv::Ptr{Nothing}
    g_mmadj::Ptr{Nothing}
    p_mmadj::Ptr{Nothing}
    p_mrgt::Ptr{Nothing}
    g_mrgt::Ptr{Nothing}
    p_grplm::Ptr{Nothing}
    g_grplm::Ptr{Nothing}
    p_mrgv::Ptr{Nothing}
    g_mrgv::Ptr{Nothing}
    free_z::Ptr{Nothing}
    cpdir::Ptr{Nothing}
    sort_obo::Ptr{Nothing}
end

type DBfile
    pub::DBfile_pub
end

const DBErrFunc_t = Ptr{Nothing}

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
const ANONYMOUS_3 = UInt32
const P_ALL = (UInt32)(0)
const P_PID = (UInt32)(1)
const P_PGID = (UInt32)(2)
# end enum ANONYMOUS_3

# const idtype_t = Nothing
# const pid_t = Cint
# const id_t = Cint
# const sig_atomic_t = Cint
# const mcontext_t = Ptr{Nothing}
# const pthread_attr_t = __darwin_pthread_attr_t
# const stack_t = Nothing
# const ucontext_t = Nothing
# const sigset_t = __darwin_sigset_t
# const uid_t = __darwin_uid_t
#
# type sigval
#     _sigval::Cint
# end
#
# type sigevent
#     sigev_notify::Cint
#     sigev_signo::Cint
#     sigev_value::Nothing
#     sigev_notify_function::Ptr{Nothing}
#     sigev_notify_attributes::Ptr{pthread_attr_t}
# end
#
# const siginfo_t = Nothing
#
# type sigaction
#     __sigaction_u::Nothing
#     sa_mask::sigset_t
#     sa_flags::Cint
# end
#
# const sig_t = Ptr{Nothing}
#
# type sigvec
#     sv_handler::Ptr{Nothing}
#     sv_mask::Cint
#     sv_flags::Cint
# end
#
# type sigstack
#     ss_sp::Cstring
#     ss_onstack::Cint
# end

const int8_t = UInt8
const int16_t = Int16
const int32_t = Cint
const int64_t = Clonglong
const uint8_t = Cuchar
const uint16_t = UInt16
const uint32_t = UInt32
const uint64_t = Culonglong
const int_least8_t = Int8
const int_least16_t = Int16
const int_least32_t = Int32
const int_least64_t = Int64
const uint_least8_t = UInt8
const uint_least16_t = UInt16
const uint_least32_t = UInt32
const uint_least64_t = UInt64
const int_fast8_t = Int8
const int_fast16_t = Int16
const int_fast32_t = Int32
const int_fast64_t = Int64
const uint_fast8_t = UInt8
const uint_fast16_t = UInt16
const uint_fast32_t = UInt32
const uint_fast64_t = UInt64
# const intptr_t = __darwin_intptr_t
const uintptr_t = Culong
const intmax_t = Clong
const uintmax_t = Culong

# type timeval
#     tv_sec::__darwin_time_t
#     tv_usec::__darwin_suseconds_t
# end

# const rlim_t = __uint64_t

type rusage
    ru_utime::Nothing
    ru_stime::Nothing
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

const rusage_info_t = Ptr{Nothing}

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

const rusage_info_current = Nothing

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

# const ct_rune_t = __darwin_ct_rune_t
# const rune_t = __darwin_rune_t
# const wchar_t = __darwin_wchar_t
const div_t = Nothing
const ldiv_t = Nothing
const lldiv_t = Nothing
const u_int8_t = Cuchar
const u_int16_t = UInt16
const u_int32_t = UInt32
const u_int64_t = Culonglong
const register_t = Int64
const user_addr_t = u_int64_t
const user_size_t = u_int64_t
const user_ssize_t = Int64
const user_long_t = Int64
const user_ulong_t = u_int64_t
const user_time_t = Int64
const user_off_t = Int64
# const syscall_arg_t = u_int64_t
# const dev_t = __darwin_dev_t
# const mode_t = __darwin_mode_t

# begin enum ANONYMOUS_4
const ANONYMOUS_4 = UInt32
const PMPIO_READ = (UInt32)(1)
const PMPIO_WRITE = (UInt32)(3)
# end enum ANONYMOUS_4

const PMPIO_iomode_t = Nothing
const PMPIO_CreateFileCallBack = Ptr{Nothing}
const PMPIO_OpenFileCallBack = Ptr{Nothing}
const PMPIO_CloseFileCallBack = Ptr{Nothing}

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
    userData::Ptr{Nothing}
end

const PMPIO_baton_t = Nothing
