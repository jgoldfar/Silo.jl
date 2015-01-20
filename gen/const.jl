# Generated with the following grep regex:
# \#define\s+(\S+?)\s+(\S*) -> const \1 = \2
# \/\* -> #=
# \*\/ -> =#
# and then edited by hand.


#= Set the base type for datatype'd pointers (that is pointers whose
   ultimate type is deteremined by an additional 'int datatype' function
   argument or struct member) as float (legacy) and void (modern). The
   DB_DTPTR is the base type. The '1' and '2' variants are for singley
   subscripted and doubley subscripted arrays, respectively. If the
   definitions of DB_DTPTR below reference 'float', then this silo.h
   header file was configured with --enable-legacy-datatyped-pointers
   and it represents the legacy (float) pointers that the silo
   library has always had since its original writing. If, instead,
   you see 'void' (the default configuration), then this silo.h header
   file is using the modern (void) pointers. In that case, note also
   that because C compiler's often do not handle correctly nor
   distinguish between a void* and a void**, both the singley and
   doubley subscripted variants will have only a single star. Rest
   assured they are still treated as doubley subscripted in the
   implementation. =#
const DB_DTPTR = Void  #= NO_FORTRAN_DEFINE =#
const DB_DTPTR1 = Ptr{Void} #= NO_FORTRAN_DEFINE =#
const DB_DTPTR2 = Ptr{Void} #= NO_FORTRAN_DEFINE =#

const FALSE = 0
const TRUE = 1

#= Major release number of silo library. =#
const SILO_VERS_MAJ = 4

#= Minor release number of silo library. Can be empty. =#
const SILO_VERS_MIN = 0x09

#= Patch release number of silo library.  Can be empty. =#
const SILO_VERS_PAT = 0x01

#= Pre-release release number of silo library.  Can be empty. =#
const SILO_VERS_PRE = ""

#=-------------------------------------------------------------------------
 * Drivers.  This is a list of every driver that a user could use.  Not all of
 * them are necessarily compiled into the library.  However, users are free
 * to try without getting compilation errors.  They are listed here so that
 * silo.h doesn't have to be generated every time the library is recompiled.
 *--------------------------------------------------------------------------=#
const DB_NETCDF = 0
const DB_PDB = 2 #= PDB Lite =#
const DB_TAURUS = 3
const DB_UNKNOWN = 5
const DB_DEBUG = 6
const DB_HDF5X = 7
const DB_PDBP = 1 #= PDB Proper =#

#= DO NOT USE. Obsoleted ways of specifying different HDF5 vfds =#
const DB_HDF5_SEC2_OBSOLETE = 0x100
const DB_HDF5_STDIO_OBSOLETE = 0x200
const DB_HDF5_CORE_OBSOLETE = 0x300
const DB_HDF5_MPIO_OBSOLETE = 0x400
const DB_HDF5_MPIOP_OBSOLETE = 0x500

#= symbols for various HDF5 vfds =#
const DB_H5VFD_DEFAULT = 0
const DB_H5VFD_SEC2 = 1
const DB_H5VFD_STDIO = 2
const DB_H5VFD_CORE = 3
const DB_H5VFD_LOG = 4
const DB_H5VFD_SPLIT = 5
const DB_H5VFD_DIRECT = 6
const DB_H5VFD_FAMILY = 7
const DB_H5VFD_MPIO = 8
const DB_H5VFD_MPIP = 9
const DB_H5VFD_SILO = 10

#= Macro for defining various HDF5 vfds as 'type' arg in create/open.
   The 11 bit shift is to avoid possible collision with older versions
   of Silo header file where VFDs where specified in bits 8-11. Their
   obsoleted values are listed above. =#
const DB_HDF5_OPTS(OptsId) = (DB_HDF5X|((OptsId&0x3F)<<11))

#= Monikers for default file options sets =#
#= We just make the default options sets the same as the vfd is =#

const DB_FILE_OPTS_H5_DEFAULT_DEFAULT = DB_H5VFD_DEFAULT
const DB_FILE_OPTS_H5_DEFAULT_SEC2 = DB_H5VFD_SEC2
const DB_FILE_OPTS_H5_DEFAULT_STDIO = DB_H5VFD_STDIO
const DB_FILE_OPTS_H5_DEFAULT_CORE = DB_H5VFD_CORE
const DB_FILE_OPTS_H5_DEFAULT_LOG = DB_H5VFD_LOG
const DB_FILE_OPTS_H5_DEFAULT_SPLIT = DB_H5VFD_SPLIT
const DB_FILE_OPTS_H5_DEFAULT_DIRECT = DB_H5VFD_DIRECT
const DB_FILE_OPTS_H5_DEFAULT_FAMILY = DB_H5VFD_FAMILY
const DB_FILE_OPTS_H5_DEFAULT_MPIO = DB_H5VFD_MPIO
const DB_FILE_OPTS_H5_DEFAULT_MPIP = DB_H5VFD_MPIP
const DB_FILE_OPTS_H5_DEFAULT_SILO = DB_H5VFD_SILO
const DB_FILE_OPTS_LAST = DB_FILE_OPTS_H5_DEFAULT_SILO

#= Various default HDF5 driver options. Users can define their own
   sets of options using DBRegisterFileOptionsSets(). =#
const DB_HDF5 = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_DEFAULT)
const DB_HDF5_SEC2 = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_SEC2)
const DB_HDF5_STDIO = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_STDIO)
const DB_HDF5_CORE = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_CORE)
const DB_HDF5_LOG = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_LOG)
const DB_HDF5_SPLIT = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_SPLIT)
const DB_HDF5_DIRECT = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_DIRECT)
const DB_HDF5_FAMILY = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_FAMILY)
const DB_HDF5_MPIO = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_MPIO)
const DB_HDF5_MPIOP = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_MPIP)
const DB_HDF5_MPIP = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_MPIP)
const DB_HDF5_SILO = DB_HDF5_OPTS(DB_FILE_OPTS_H5_DEFAULT_SILO)

#=-------------------------------------------------------------------------
 * Other library-wide constants.
 *-------------------------------------------------------------------------=#

const DB_NFILES = 256         #=Max simultaneously open files =#
const DB_NFILTERS = 32          #=Number of filters defined =#

#=-------------------------------------------------------------------------
 * Constants.  All of these constants are always defined in the application.
 * Each group of constants defined here are small integers used as an index
 * into an array.  Many of the groups have a total count of items in the
 * group that will be used for array allocation and error checking--don't
 * forget to increment the value when adding a new item to a constant group.
 *-------------------------------------------------------------------------
 =#

#= The following identifiers are for use with the DBDataReadMask() call.  They
 * specify what portions of the data beyond the metadata is allocated
 * and read.  Note that since these values are only necessary when reading
 * and since the Fortran interface is primarily a write interface, it is not
 * necessary for these symbols to appear in the silo.inc file. However, the
 * reason they DO NOT APPEAR there inspite of the fact that DO NOT HAVE the
 * 'NO_FORTRAN_DEFINE' text appearing on each line is that the mkinc script
 * requires an underscore in the symbol name for it to appear in silo.inc. =#

const DBAll = 0xffffffff
const DBNone = 0x00000000
const DBCalc = 0x00000001
const DBMatMatnos = 0x00000002
const DBMatMatlist = 0x00000004
const DBMatMixList = 0x00000008
const DBCurveArrays = 0x00000010
const DBPMCoords = 0x00000020
const DBPVData = 0x00000040
const DBQMCoords = 0x00000080
const DBQVData = 0x00000100
const DBUMCoords = 0x00000200
const DBUMFacelist = 0x00000400
const DBUMZonelist = 0x00000800
const DBUVData = 0x00001000
const DBFacelistInfo = 0x00002000
const DBZonelistInfo = 0x00004000
const DBMatMatnames = 0x00008000
const DBUMGlobNodeNo = 0x00010000
const DBZonelistGlobZoneNo = 0x00020000
const DBMatMatcolors = 0x00040000
const DBCSGMBoundaryInfo = 0x00080000
const DBCSGMZonelist = 0x00100000
const DBCSGMBoundaryNames = 0x00200000
const DBCSGVData = 0x00400000
const DBCSGZonelistZoneNames = 0x00800000
const DBCSGZonelistRegNames = 0x01000000
const DBMMADJNodelists = 0x02000000
const DBMMADJZonelists = 0x04000000
const DBPMGlobNodeNo = 0x08000000

#= Definitions for COORD_TYPE =#
#= Placed before DBObjectType enum because the
   DB_QUAD_CURV and DB_QUAD_RECT symbols are
   sometimes used as DBObjectType =#

const DB_COLLINEAR = 130
const DB_NONCOLLINEAR = 131
const DB_QUAD_RECT = DB_COLLINEAR
const DB_QUAD_CURV = DB_NONCOLLINEAR

#= Objects that can be stored in a data file =#
#=
typedef enum {
    DB_INVALID_OBJECT= -1,       #=causes enum to be signed, do not remove,
                                   space before minus sign necessary for lint=#
    DB_QUADRECT = DB_QUAD_RECT,
    DB_QUADCURV = DB_QUAD_CURV,
    DB_QUADMESH=500,
    DB_QUADVAR=501,
    DB_UCDMESH=510,
    DB_UCDVAR=511,
    DB_MULTIMESH=520,
    DB_MULTIVAR=521,
    DB_MULTIMAT=522,
    DB_MULTIMATSPECIES=523,
    DB_MULTIBLOCKMESH=DB_MULTIMESH,
    DB_MULTIBLOCKVAR=DB_MULTIVAR,
    DB_MULTIMESHADJ=524,
    DB_MATERIAL=530,
    DB_MATSPECIES=531,
    DB_FACELIST=550,
    DB_ZONELIST=551,
    DB_EDGELIST=552,
    DB_PHZONELIST=553,
    DB_CSGZONELIST=554,
    DB_CSGMESH=555,
    DB_CSGVAR=556,
    DB_CURVE=560,
    DB_DEFVARS=565,
    DB_POINTMESH=570,
    DB_POINTVAR=571,
    DB_ARRAY=580,
    DB_DIR=600,
    DB_VARIABLE=610,
    DB_MRGTREE=611,
    DB_GROUPELMAP=612,
    DB_MRGVAR=613,
    DB_USERDEF=700
} DBObjectType;

#= Data types =#
typedef enum {
    DB_INT=16,
    DB_SHORT=17,
    DB_LONG=18,
    DB_FLOAT=19,
    DB_DOUBLE=20,
    DB_CHAR=21,
    DB_LONG_LONG=22,
    DB_NOTYPE=25           #=unknown type =#
} DBdatatype;=#

#= Flags for DBCreate =#
const DB_CLOBBER = 0
const DB_NOCLOBBER = 1

#= Flags for DBOpen =#
const DB_READ = 1
const DB_APPEND = 2

#= Target machine for DBCreate =#
const DB_LOCAL = 0
const DB_SUN3 = 10
const DB_SUN4 = 11
const DB_SGI = 12
const DB_RS6000 = 13
const DB_CRAY = 14
const DB_INTEL = 15

#= Options =#
const DBOPT_FIRST = 260
const DBOPT_ALIGN = 260
const DBOPT_COORDSYS = 262
const DBOPT_CYCLE = 263
const DBOPT_FACETYPE = 264
const DBOPT_HI_OFFSET = 265
const DBOPT_LO_OFFSET = 266
const DBOPT_LABEL = 267
const DBOPT_XLABEL = 268
const DBOPT_YLABEL = 269
const DBOPT_ZLABEL = 270
const DBOPT_MAJORORDER = 271
const DBOPT_NSPACE = 272
const DBOPT_ORIGIN = 273
const DBOPT_PLANAR = 274
const DBOPT_TIME = 275
const DBOPT_UNITS = 276
const DBOPT_XUNITS = 277
const DBOPT_YUNITS = 278
const DBOPT_ZUNITS = 279
const DBOPT_DTIME = 280
const DBOPT_USESPECMF = 281
const DBOPT_XVARNAME = 282
const DBOPT_YVARNAME = 283
const DBOPT_ZVARNAME = 284
const DBOPT_ASCII_LABEL = 285
const DBOPT_MATNOS = 286
const DBOPT_NMATNOS = 287
const DBOPT_MATNAME = 288
const DBOPT_NMAT = 289
const DBOPT_NMATSPEC = 290
const DBOPT_BASEINDEX = 291 #= quad meshes for node and zone =#
const DBOPT_ZONENUM = 292 #= ucd meshes for zone =#
const DBOPT_NODENUM = 293 #= ucd/point meshes for node =#
const DBOPT_BLOCKORIGIN = 294
const DBOPT_GROUPNUM = 295
const DBOPT_GROUPORIGIN = 296
const DBOPT_NGROUPS = 297
const DBOPT_MATNAMES = 298
const DBOPT_EXTENTS_SIZE = 299
const DBOPT_EXTENTS = 300
const DBOPT_MATCOUNTS = 301
const DBOPT_MATLISTS = 302
const DBOPT_MIXLENS = 303
const DBOPT_ZONECOUNTS = 304
const DBOPT_HAS_EXTERNAL_ZONES = 305
const DBOPT_PHZONELIST = 306
const DBOPT_MATCOLORS = 307
const DBOPT_BNDNAMES = 308
const DBOPT_REGNAMES = 309
const DBOPT_ZONENAMES = 310
const DBOPT_HIDE_FROM_GUI = 311
const DBOPT_TOPO_DIM = 312 #= TOPOlogical DIMension =#
const DBOPT_REFERENCE = 313 #= reference object =#
const DBOPT_GROUPINGS_SIZE = 314 #= size of grouping array =#
const DBOPT_GROUPINGS = 315 #= groupings array =#
const DBOPT_GROUPINGNAMES = 316 #= array of size determined by number of groups of names of groups. =#
const DBOPT_ALLOWMAT0 = 317 #= Turn off material numer "0" warnings=#
const DBOPT_MRGTREE_NAME = 318
const DBOPT_REGION_PNAMES = 319
const DBOPT_TENSOR_RANK = 320
const DBOPT_MMESH_NAME = 321
const DBOPT_TV_CONNECTIVITY = 322
const DBOPT_DISJOINT_MODE = 323
const DBOPT_MRGV_ONAMES = 324
const DBOPT_MRGV_RNAMES = 325
const DBOPT_SPECNAMES = 326
const DBOPT_SPECCOLORS = 327
const DBOPT_LLONGNZNUM = 328
const DBOPT_CONSERVED = 329
const DBOPT_EXTENSIVE = 330
const DBOPT_MB_FILE_NS = 331
const DBOPT_MB_BLOCK_NS = 332
const DBOPT_MB_BLOCK_TYPE = 333
const DBOPT_MB_EMPTY_LIST = 334
const DBOPT_MB_EMPTY_COUNT = 335
const DBOPT_MB_REPR_BLOCK_IDX = 336
const DBOPT_LAST = 499

#= Options relating to virtual file drivers =#
const DBOPT_H5_FIRST = 500
const DBOPT_H5_VFD = 500
const DBOPT_H5_RAW_FILE_OPTS = 501
const DBOPT_H5_RAW_EXTENSION = 502
const DBOPT_H5_META_FILE_OPTS = 503
const DBOPT_H5_META_EXTENSION = 504
const DBOPT_H5_CORE_ALLOC_INC = 505
const DBOPT_H5_CORE_NO_BACK_STORE = 506
const DBOPT_H5_META_BLOCK_SIZE = 507
const DBOPT_H5_SMALL_RAW_SIZE = 508
const DBOPT_H5_ALIGN_MIN = 509
const DBOPT_H5_ALIGN_VAL = 510
const DBOPT_H5_DIRECT_MEM_ALIGN = 511
const DBOPT_H5_DIRECT_BLOCK_SIZE = 512
const DBOPT_H5_DIRECT_BUF_SIZE = 513
const DBOPT_H5_LOG_NAME = 514
const DBOPT_H5_LOG_BUF_SIZE = 515
const DBOPT_H5_MPIO_COMM = 516
const DBOPT_H5_MPIO_INFO = 517
const DBOPT_H5_MPIP_NO_GPFS_HINTS = 518
const DBOPT_H5_SIEVE_BUF_SIZE = 519
const DBOPT_H5_CACHE_NELMTS = 520
const DBOPT_H5_CACHE_NBYTES = 521
const DBOPT_H5_CACHE_POLICY = 522
const DBOPT_H5_FAM_SIZE = 523
const DBOPT_H5_FAM_FILE_OPTS = 524
const DBOPT_H5_USER_DRIVER_ID = 525
const DBOPT_H5_USER_DRIVER_INFO = 526
const DBOPT_H5_SILO_BLOCK_SIZE = 527
const DBOPT_H5_SILO_BLOCK_COUNT = 528
const DBOPT_H5_SILO_LOG_STATS = 529
const DBOPT_H5_SILO_USE_DIRECT = 530
const DBOPT_H5_LAST = 599

#= Error trapping method =#
const DB_TOP = 0 #=default--API traps  =#
const DB_NONE = 1 #=no errors trapped  =#
const DB_ALL = 2 #=all levels trap (traceback) =#
const DB_ABORT = 3 #=abort() is called  =#
const DB_SUSPEND = 4 #=suspend error reporting temporarily =#
const DB_RESUME = 5 #=resume normal error reporting =#
const DB_ALL_AND_DRVR = 6 #=DB_ALL + driver error reporting =#

#= Errors =#
const E_NOERROR = 0       #=No error   =#
const E_BADFTYPE = 1       #=Bad file type   =#
const E_NOTIMP = 2       #=Callback not implemented =#
const E_NOFILE = 3       #=No data file specified    =#
const E_INTERNAL = 5       #=Internal error        =#
const E_NOMEM = 6       #=Not enough memory     =#
const E_BADARGS = 7       #=Bad argument to function  =#
const E_CALLFAIL = 8       #=Low-level function failure    =#
const E_NOTFOUND = 9       #=Object not found      =#
const E_TAURSTATE = 10      #=Taurus: database state error  =#
const E_MSERVER = 11      #=SDX: too many connections =#
const E_PROTO = 12      #=SDX: protocol error       =#
const E_NOTDIR = 13      #=Not a directory       =#
const E_MAXOPEN = 14      #=Too many open files  =#
const E_NOTFILTER = 15      #=Filter(s) not found  =#
const E_MAXFILTERS = 16  #=Too many filters  =#
const E_FEXIST = 17      #=File already exists  =#
const E_FILEISDIR = 18      #=File is actually a directory =#
const E_FILENOREAD = 19  #=File lacks read permission. =#
const E_SYSTEMERR = 20      #=System level error occured. =#
const E_FILENOWRITE = 21    #=File lacks write permission. =#
const E_INVALIDNAME = 22    #= Variable name is invalid =#
const E_NOOVERWRITE = 23    #=Overwrite not permitted =#
const E_CHECKSUM = 24      #=Checksum failed =#
const E_COMPRESSION = 25   #=Compression failed =#
const E_GRABBED = 26      #=Low level driver enabled =#
const E_NOTREG = 27      #=The dbfile pointer is not resitered. =#
const E_CONCURRENT = 28     #=File is opened multiply and not all read-only. =#
const E_DRVRCANTOPEN = 29   #=Driver cannot open the file. =#
const E_BADOPTCLASS = 30    #=Optlist contains options for wrong class =#
const E_NOTENABLEDINBUILD = 31 #=feature not enabled in this build =#
const E_MAXFILEOPTSETS = 32 #=Too many file options sets =#
const E_NOHDF5 = 33         #=HDF5 driver not available =#
const E_EMPTYOBJECT = 34    #=Empty object not currently permitted=#
const E_NERRORS = 50

#= Definitions for MAJOR_ORDER =#
const DB_ROWMAJOR = 0
const DB_COLMAJOR = 1

#= Definitions for CENTERING =#
const DB_NOTCENT = 0
const DB_NODECENT = 110
const DB_ZONECENT = 111
const DB_FACECENT = 112
const DB_BNDCENT = 113 #= for CSG meshes only =#
const DB_EDGECENT = 114
const DB_BLOCKCENT = 115 #= for 'block-centered' data on multimeshs =#

#= Definitions for COORD_SYSTEM =#
const DB_CARTESIAN = 120
const DB_CYLINDRICAL = 121
const DB_SPHERICAL = 122
const DB_NUMERICAL = 123
const DB_OTHER = 124

#= Definitions for ZONE FACE_TYPE =#
const DB_RECTILINEAR = 100
const DB_CURVILINEAR = 101

#= Definitions for PLANAR =#
const DB_AREA = 140
const DB_VOLUME = 141

#= Definitions for flag values =#
const DB_ON = 1000
const DB_OFF = -1000

#= Definitions for disjoint flag =#
const DB_ABUTTING = 142
const DB_FLOATING = 143

#= Definitions for derived variable types =#
const DB_VARTYPE_SCALAR = 200
const DB_VARTYPE_VECTOR = 201
const DB_VARTYPE_TENSOR = 202
const DB_VARTYPE_SYMTENSOR = 203
const DB_VARTYPE_ARRAY = 204
const DB_VARTYPE_MATERIAL = 205
const DB_VARTYPE_SPECIES = 206
const DB_VARTYPE_LABEL = 207

#= Definitions for CSG boundary types
   Designed so low-order 16 bits are unused.

   The last few characters of the symbol are intended
   to indicate the representational form of the surface type

   G = generalized form  (n values, depends on surface type)
   P = point (3 values, x,y,z in 3D, 2 values in 2D x,y)
   N = normal (3 values, Nx,Ny,Nz in 3D, 2 values in 2D Nx,Ny)
   R = radius (1 value)
   A = angle (1 value in degrees)
   L = length (1 value)
   X = x-intercept (1 value)
   Y = y-intercept (1 value)
   Z = z-intercept (1 value)
   K = arbitrary integer
   F = planar face defined by point-normal pair (6 values)
   =#
const DBCSG_QUADRIC_G = 0x01000000
const DBCSG_SPHERE_PR = 0x02010000
const DBCSG_ELLIPSOID_PRRR = 0x02020000
const DBCSG_PLANE_G = 0x03000000
const DBCSG_PLANE_X = 0x03010000
const DBCSG_PLANE_Y = 0x03020000
const DBCSG_PLANE_Z = 0x03030000
const DBCSG_PLANE_PN = 0x03040000
const DBCSG_PLANE_PPP = 0x03050000
const DBCSG_CYLINDER_PNLR = 0x04000000
const DBCSG_CYLINDER_PPR = 0x04010000
const DBCSG_BOX_XYZXYZ = 0x05000000
const DBCSG_CONE_PNLA = 0x06000000
const DBCSG_CONE_PPA = 0x06010000
const DBCSG_POLYHEDRON_KF = 0x07000000
const DBCSG_HEX_6F = 0x07010000
const DBCSG_TET_4F = 0x07020000
const DBCSG_PYRAMID_5F = 0x07030000
const DBCSG_PRISM_5F = 0x07040000

#= Definitions for 2D CSG boundary types =#
const DBCSG_QUADRATIC_G = 0x08000000
const DBCSG_CIRCLE_PR = 0x09000000
const DBCSG_ELLIPSE_PRR = 0x09010000
const DBCSG_LINE_G = 0x0A000000
const DBCSG_LINE_X = 0x0A010000
const DBCSG_LINE_Y = 0x0A020000
const DBCSG_LINE_PN = 0x0A030000
const DBCSG_LINE_PP = 0x0A040000
const DBCSG_BOX_XYXY = 0x0B000000
const DBCSG_ANGLE_PNLA = 0x0C000000
const DBCSG_ANGLE_PPA = 0x0C010000
const DBCSG_POLYGON_KP = 0x0D000000
const DBCSG_TRI_3P = 0x0D010000
const DBCSG_QUAD_4P = 0x0D020000

#= Definitions for CSG Region operators =#
const DBCSG_INNER = 0x7F000000
const DBCSG_OUTER = 0x7F010000
const DBCSG_ON = 0x7F020000
const DBCSG_UNION = 0x7F030000
const DBCSG_INTERSECT = 0x7F040000
const DBCSG_DIFF = 0x7F050000
const DBCSG_COMPLIMENT = 0x7F060000
const DBCSG_XFORM = 0x7F070000
const DBCSG_SWEEP = 0x7F080000

#= definitions for MRG Tree traversal flags =#
const DB_PREORDER = 0x00000001
const DB_POSTORDER = 0x00000002
const DB_FROMCWR = 0x00000004

#= Miscellaneous constants =#
const DB_F77NULL = (-99)   #=Fortran NULL pointer      =#
const DB_F77NULLSTRING = "NULLSTRING"  #= FORTRAN STRING =#

#=-------------------------------------------------------------------------
 * Index selection macros
 *-------------------------------------------------------------------------
 =#
#= const I4D(s,i,j,k,l) = (l)*s[3]+(k)*s[2]+(j)*s[1]+(i)*s[0]
# const I3D(s,i,j,k) = (k)*s[2]+(j)*s[1]+(i)*s[0]
const I2D(s,i,j) = (j)*s[1]+(i)*s[0] =#

#=-------------------------------------------------------------------------
 * Structures (just the public parts).
 *-------------------------------------------------------------------------
 =#


#=
#=
 * Database table of contents for the current directory only.
 =#
typedef struct DBtoc_ {

    char         **curve_names;
    int            ncurve;

    char         **multimesh_names;
    int            nmultimesh;

    char         **multimeshadj_names;
    int            nmultimeshadj;

    char         **multivar_names;
    int            nmultivar;

    char         **multimat_names;
    int            nmultimat;

    char         **multimatspecies_names;
    int            nmultimatspecies;

    char         **csgmesh_names;
    int            ncsgmesh;

    char         **csgvar_names;
    int            ncsgvar;

    char         **defvars_names;
    int            ndefvars;

    char         **qmesh_names;
    int            nqmesh;

    char         **qvar_names;
    int            nqvar;

    char         **ucdmesh_names;
    int            nucdmesh;

    char         **ucdvar_names;
    int            nucdvar;

    char         **ptmesh_names;
    int            nptmesh;

    char         **ptvar_names;
    int            nptvar;

    char         **mat_names;
    int            nmat;

    char         **matspecies_names;
    int            nmatspecies;

    char         **var_names;
    int            nvar;

    char         **obj_names;
    int            nobj;

    char         **dir_names;
    int            ndir;

    char         **array_names;
    int            narray;

    char         **mrgtree_names;
    int            nmrgtree;

    char         **groupelmap_names;
    int            ngroupelmap;

    char         **mrgvar_names;
    int            nmrgvar;

} DBtoc;

#=----------------------------------------------------------------------------
 * Database Curve Object
 *--------------------------------------------------------------------------
 =#
typedef struct DBcurve_ {
#=----------- X vs. Y (Curve) Data -----------=#
    int            id;          #= Identifier for this object =#
    int            datatype;    #= Datatype for x and y (float, double) =#
    int            origin;      #= '0' or '1' =#
    char          *title;       #= Title for curve =#
    char          *xvarname;    #= Name of domain (x) variable =#
    char          *yvarname;    #= Name of range  (y) variable =#
    char          *xlabel;      #= Label for x-axis =#
    char          *ylabel;      #= Label for y-axis =#
    char          *xunits;      #= Units for domain =#
    char          *yunits;      #= Units for range  =#
    DB_DTPTR      *x;           #= Domain values for curve =#
    DB_DTPTR      *y;           #= Range  values for curve =#
    int            npts;        #= Number of points in curve =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    char          *reference;   #= Label to reference object =#
} DBcurve;

typedef struct DBdefvars_ {
    int            ndefs;       #= number of definitions =#
    char         **names;       #= [ndefs] derived variable names =#
    int           *types;       #= [ndefs] derived variable types =#
    char         **defns;       #= [ndefs] derived variable definitions =#
    int        *guihides;       #= [ndefs] flags to hide from
                                   post-processor's GUI =#
} DBdefvars;

typedef struct DBpointmesh_ {
#=----------- Point Mesh -----------=#
    int            id;          #= Identifier for this object =#
    int            block_no;    #= Block number for this mesh =#
    int            group_no;    #= Block group number for this mesh =#
    char          *name;        #= Name associated with this mesh =#
    int            cycle;       #= Problem cycle number =#
    char          *units[3];    #= Units for each axis =#
    char          *labels[3];   #= Labels for each axis =#
    char          *title;       #= Title for curve =#

    DB_DTPTR      *coords[3];   #= Coordinate values =#
    float          time;        #= Problem time =#
    double         dtime;       #= Problem time, double data type =#
   #=
    * The following two fields really only contain 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetPointmesh() which
    * can cause three doubles to be stored there instead of three floats.
    =#
    float          min_extents[6];  #= Min mesh extents [ndims] =#
    float          max_extents[6];  #= Max mesh extents [ndims] =#

    int            datatype;    #= Datatype for coords (float, double) =#
    int            ndims;       #= Number of computational dimensions =#
    int            nels;        #= Number of elements in mesh =#
    int            origin;      #= '0' or '1' =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    void          *gnodeno;     #= global node ids =#
    char          *mrgtree_name; #= optional name of assoc. mrgtree object =#
    int            gnznodtype;  #= datatype for global node/zone ids =#
} DBpointmesh;

#=----------------------------------------------------------------------------
 * Multi-Block Mesh Object
 *--------------------------------------------------------------------------
 =#
typedef struct DBmultimesh_ {
#=----------- Multi-Block Mesh -----------=#
    int            id;          #= Identifier for this object =#
    int            nblocks;     #= Number of blocks in mesh =#
    int            ngroups;     #= Number of block groups in mesh =#
    int           *meshids;     #= Array of mesh-ids which comprise mesh =#
    char         **meshnames;   #= Array of mesh-names for meshids =#
    int           *meshtypes;   #= Array of mesh-type indicators [nblocks] =#
    int           *dirids;      #= Array of directory ID's which contain blk =#
    int            blockorigin; #= Origin (0 or 1) of block numbers =#
    int            grouporigin; #= Origin (0 or 1) of group numbers =#
    int            extentssize; #= size of each extent tuple =#
    double        *extents;     #= min/max extents of coords of each block =#
    int           *zonecounts;  #= array of zone counts for each block =#
    int           *has_external_zones;  #= external flags for each block =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    int            lgroupings;  #= size of groupings array =#
    int            *groupings;  #= Array of mesh-ids, group-ids, and counts =#
    char          **groupnames; #= Array of group-names for groupings  =#
    char          *mrgtree_name;#= optional name of assoc. mrgtree object =#
    int            tv_connectivity;
    int            disjoint_mode;
    int            topo_dim;    #= Topological dimension; max of all blocks. =#
    char          *file_ns;     #= namescheme for files (in lieu of meshnames) =#
    char          *block_ns;    #= namescheme for block objects (in lieu of meshnames) =#
    int            block_type;  #= constant block type for all blocks (in lieu of meshtypes) =#
    int           *empty_list;  #= list of empty block #'s (option for namescheme) =#
    int            empty_cnt;   #= size of empty list =#
    int            repr_block_idx; #= index of a 'representative' block =#
} DBmultimesh;

#=----------------------------------------------------------------------------
 * Multi-Block Mesh Adjacency Object
 *--------------------------------------------------------------------------
 =#
typedef struct DBmultimeshadj_ {
#=----------- Multi-Block Mesh Adjacency -----------=#
    int            nblocks;     #= Number of blocks in mesh =#
    int            blockorigin; #= Origin (0 or 1) of block numbers =#
    int           *meshtypes;   #= Array of mesh-type indicators [nblocks] =#
    int           *nneighbors;  #= Array [nblocks] neighbor counts =#

    int           lneighbors;
    int           *neighbors;   #= Array [lneighbors] neighbor block numbers =#
    int           *back;        #= Array [lneighbors] neighbor block back =#

    int            totlnodelists;
    int           *lnodelists;  #= Array [lneighbors] of node counts shared =#
    int          **nodelists;   #= Array [lneighbors] nodelists shared =#

    int            totlzonelists;
    int           *lzonelists;  #= Array [lneighbors] of zone counts adjacent =#
    int          **zonelists;   #= Array [lneighbors] zonelists adjacent =#
} DBmultimeshadj;

#=----------------------------------------------------------------------------
 * Multi-Block Variable Object
 *--------------------------------------------------------------------------
 =#
typedef struct DBmultivar_ {
#=----------- Multi-Block Variable -----------=#
    int            id;          #= Identifier for this object  =#
    int            nvars;       #= Number of variables   =#
    int            ngroups;     #= Number of block groups in mesh =#
    char         **varnames;    #= Variable names   =#
    int           *vartypes;    #= variable types   =#
    int            blockorigin; #= Origin (0 or 1) of block numbers =#
    int            grouporigin; #= Origin (0 or 1) of group numbers =#
    int            extentssize; #= size of each extent tuple =#
    double        *extents;     #= min/max extents of each block =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    char         **region_pnames;
    char          *mmesh_name;
    int            tensor_rank;    #= DB_VARTYPE_XXX =#
    int            conserved;   #= indicates if the variable should be conserved
                                   under various operations such as interp. =#
    int            extensive;   #= indicates if the variable reprsents an extensiv
                                   physical property (as opposed to intensive) =#
    char          *file_ns;     #= namescheme for files (in lieu of meshnames) =#
    char          *block_ns;    #= namescheme for block objects (in lieu of meshnames) =#
    int            block_type;  #= constant block type for all blocks (in lieu of meshtypes) =#
    int           *empty_list;  #= list of empty block #'s (option for namescheme) =#
    int            empty_cnt;   #= size of empty list =#
    int            repr_block_idx; #= index of a 'representative' block =#
} DBmultivar;

#=-------------------------------------------------------------------------
 * Multi-material
 *-------------------------------------------------------------------------
 =#
typedef struct DBmultimat_ {
    int            id;          #= Identifier for this object  =#
    int            nmats;       #= Number of materials   =#
    int            ngroups;     #= Number of block groups in mesh =#
    char         **matnames;    #= names of constiuent DBmaterial objects =#
    int            blockorigin; #= Origin (0 or 1) of block numbers =#
    int            grouporigin; #= Origin (0 or 1) of group numbers =#
    int           *mixlens;     #= array of mixlen values in each mat =#
    int           *matcounts;   #= counts of unique materials in each block =#
    int           *matlists;    #= list of materials in each block =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    int            nmatnos;     #= global number of materials over all pieces =#
    int           *matnos;      #= global list of material numbers =#
    char         **matcolors;   #= optional colors for materials =#
    char         **material_names; #= optional names of the materials =#
    int            allowmat0;   #= Flag to allow material "0" =#
    char          *mmesh_name;
    char          *file_ns;     #= namescheme for files (in lieu of meshnames) =#
    char          *block_ns;    #= namescheme for block objects (in lieu of meshnames) =#
    int           *empty_list;  #= list of empty block #'s (option for namescheme) =#
    int            empty_cnt;   #= size of empty list =#
    int            repr_block_idx; #= index of a 'representative' block =#
} DBmultimat;

#=-------------------------------------------------------------------------
 * Multi-species
 *-------------------------------------------------------------------------
 =#
typedef struct DBmultimatspecies_ {
    int            id;          #= Identifier for this object  =#
    int            nspec;       #= Number of species   =#
    int            ngroups;     #= Number of block groups in mesh =#
    char         **specnames;   #= Species object names   =#
    int            blockorigin; #= Origin (0 or 1) of block numbers =#
    int            grouporigin; #= Origin (0 or 1) of group numbers =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    int            nmat;        #= equiv. to nmatnos of a DBmultimat =#
    int           *nmatspec;    #= equiv. to matnos of a DBmultimat =#
    char         **species_names; #= optional names of the species =#
    char         **speccolors;  #= optional colors for species =#
    char          *file_ns;     #= namescheme for files (in lieu of meshnames) =#
    char          *block_ns;    #= namescheme for block objects (in lieu of meshnames) =#
    int           *empty_list;  #= list of empty block #'s (option for namescheme) =#
    int            empty_cnt;   #= size of empty list =#
    int            repr_block_idx; #= index of a 'representative' block =#
} DBmultimatspecies;

#=----------------------------------------------------------------------
 *  Definitions for the FaceList, ZoneList, and EdgeList structures
 *  used for describing UCD meshes.
 *----------------------------------------------------------------------
 =#
 =#

const DB_ZONETYPE_BEAM = 10

const DB_ZONETYPE_POLYGON = 20
const DB_ZONETYPE_TRIANGLE = 23
const DB_ZONETYPE_QUAD = 24

const DB_ZONETYPE_POLYHEDRON = 30
const DB_ZONETYPE_TET = 34
const DB_ZONETYPE_PYRAMID = 35
const DB_ZONETYPE_PRISM = 36
const DB_ZONETYPE_HEX = 38

#=
typedef struct DBzonelist_ {
    int            ndims;       #= Number of dimensions (2,3) =#
    int            nzones;      #= Number of zones in list =#
    int            nshapes;     #= Number of zone shapes =#
    int           *shapecnt;    #= [nshapes] occurences of each shape =#
    int           *shapesize;   #= [nshapes] Number of nodes per shape =#
    int           *shapetype;   #= [nshapes] Type of shape =#
    int           *nodelist;    #= Sequent lst of nodes which comprise zones =#
    int            lnodelist;   #= Number of nodes in nodelist =#
    int            origin;      #= '0' or '1' =#
    int            min_index;   #= Index of first real zone =#
    int            max_index;   #= Index of last real zone =#

#=--------- Optional zone attributes ---------=#
    int           *zoneno;      #= [nzones] zone number of each zone =#
    void          *gzoneno;     #= [nzones] global zone number of each zone =#
    int            gnznodtype;  #= datatype for global node/zone ids =#
} DBzonelist;

typedef struct DBphzonelist_ {
    int            nfaces;      #= Number of faces in facelist (aka "facetable") =#
    int           *nodecnt;     #= Count of nodes in each face =#
    int            lnodelist;   #= Length of nodelist used to construct faces =#
    int           *nodelist;    #= List of nodes used in all faces =#
    char          *extface;     #= boolean flag indicating if a face is external =#
    int            nzones;      #= Number of zones in this zonelist =#
    int           *facecnt;     #= Count of faces in each zone =#
    int            lfacelist;   #= Length of facelist used to construct zones =#
    int           *facelist;    #= List of faces used in all zones =#
    int            origin;      #= '0' or '1' =#
    int            lo_offset;   #= Index of first non-ghost zone =#
    int            hi_offset;   #= Index of last non-ghost zone =#

#=--------- Optional zone attributes ---------=#
    int           *zoneno;      #= [nzones] zone number of each zone =#
    void          *gzoneno;     #= [nzones] global zone number of each zone =#
    int            gnznodtype;  #= datatype for global node/zone ids =#
} DBphzonelist;

typedef struct DBfacelist_ {
#=----------- Required components ------------=#
    int            ndims;       #= Number of dimensions (2,3) =#
    int            nfaces;      #= Number of faces in list =#
    int            origin;      #= '0' or '1' =#
    int           *nodelist;    #= Sequent list of nodes comprise faces =#
    int            lnodelist;   #= Number of nodes in nodelist =#

#=----------- 3D components ------------------=#
    int            nshapes;     #= Number of face shapes =#
    int           *shapecnt;    #= [nshapes] Num of occurences of each shape =#
    int           *shapesize;   #= [nshapes] Number of nodes per shape =#

#=----------- Optional type component---------=#
    int            ntypes;      #= Number of face types =#
    int           *typelist;    #= [ntypes] Type ID for each type =#
    int           *types;       #= [nfaces] Type info for each face =#

#=--------- Optional node attributes ---------=#
    int           *nodeno;      #= [lnodelist] node number of each node =#

#=----------- Optional zone-reference component---------=#
    int           *zoneno;      #= [nfaces] Zone number for each face =#
} DBfacelist;

typedef struct DBedgelist_ {
    int            ndims;       #= Number of dimensions (2,3) =#
    int            nedges;      #= Number of edges =#
    int           *edge_beg;    #= [nedges] =#
    int           *edge_end;    #= [nedges] =#
    int            origin;      #= '0' or '1' =#
} DBedgelist;

typedef struct DBquadmesh_ {
#=----------- Quad Mesh -----------=#
    int            id;          #= Identifier for this object =#
    int            block_no;    #= Block number for this mesh =#
    int            group_no;    #= Block group number for this mesh =#
    char          *name;        #= Name associated with mesh =#
    int            cycle;       #= Problem cycle number =#
    int            coord_sys;   #= Cartesian, cylindrical, spherical =#
    int            major_order; #= 1 indicates row-major for multi-d arrays =#
    int            stride[3];   #= Offsets to adjacent elements  =#
    int            coordtype;   #= Coord array type: collinear,
                                 * non-collinear =#
    int            facetype;    #= Zone face type: rect, curv =#
    int            planar;      #= Sentinel: zones represent area or volume? =#

    DB_DTPTR      *coords[3];   #= Mesh node coordinate ptrs [ndims] =#
    int            datatype;    #= Type of coordinate arrays (double,float) =#
    float          time;        #= Problem time =#
    double         dtime;       #= Problem time, double data type =#
   #=
    * The following two fields really only contain 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetQuadmesh() which
    * can cause three doubles to be stored there instead of three floats.
    =#
    float          min_extents[6];  #= Min mesh extents [ndims] =#
    float          max_extents[6];  #= Max mesh extents [ndims] =#

    char          *labels[3];   #= Label associated with each dimension =#
    char          *units[3];    #= Units for variable, e.g, 'mm/ms' =#
    int            ndims;       #= Number of computational dimensions =#
    int            nspace;      #= Number of physical dimensions =#
    int            nnodes;      #= Total number of nodes =#

    int            dims[3];     #= Number of nodes per dimension =#
    int            origin;      #= '0' or '1' =#
    int            min_index[3];   #= Index in each dimension of 1st
                                    * non-phoney =#
    int            max_index[3];   #= Index in each dimension of last
                                    * non-phoney =#
    int            base_index[3];  #= Lowest real i,j,k value for this block =#
    int            start_index[3]; #= i,j,k values corresponding to original
                                    * mesh =#
    int            size_index[3];  #= Number of nodes per dimension for
                                    * original mesh =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    char          *mrgtree_name; #= optional name of assoc. mrgtree object =#
} DBquadmesh;

typedef struct DBucdmesh_ {
#=----------- Unstructured Cell Data (UCD) Mesh -----------=#
    int            id;          #= Identifier for this object =#
    int            block_no;    #= Block number for this mesh =#
    int            group_no;    #= Block group number for this mesh =#
    char          *name;        #= Name associated with mesh =#
    int            cycle;       #= Problem cycle number =#
    int            coord_sys;   #= Coordinate system =#
    int            topo_dim;    #= Topological dimension. =#
    char          *units[3];    #= Units for variable, e.g, 'mm/ms' =#
    char          *labels[3];   #= Label associated with each dimension =#

    DB_DTPTR      *coords[3];   #= Mesh node coordinates =#
    int            datatype;    #= Type of coordinate arrays (double,float) =#
    float          time;        #= Problem time =#
    double         dtime;       #= Problem time, double data type =#
   #=
    * The following two fields really only contain 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetUcdmesh() which
    * can cause three doubles to be stored there instead of three floats.
    =#
    float          min_extents[6];  #= Min mesh extents [ndims] =#
    float          max_extents[6];  #= Max mesh extents [ndims] =#

    int            ndims;       #= Number of computational dimensions =#
    int            nnodes;      #= Total number of nodes =#
    int            origin;      #= '0' or '1' =#

    DBfacelist    *faces;       #= Data structure describing mesh faces =#
    DBzonelist    *zones;       #= Data structure describing mesh zones =#
    DBedgelist    *edges;       #= Data struct describing mesh edges
                                 * (option) =#

#=--------- Optional node attributes ---------=#
    void          *gnodeno;     #= [nnodes] global node number of each node =#

#=--------- Optional zone attributes ---------=#
    int           *nodeno;      #= [nnodes] node number of each node =#

#=--------- Optional polyhedral zonelist ---------=#
    DBphzonelist  *phzones;     #= Data structure describing mesh zones =#

    int            guihide;     #= Flag to hide from post-processor's GUI =#
    char          *mrgtree_name; #= optional name of assoc. mrgtree object =#
    int            tv_connectivity;
    int            disjoint_mode;
    int            gnznodtype;  #= datatype for global node/zone ids =#
} DBucdmesh;

#=----------------------------------------------------------------------------
 * Database Mesh-Variable Object
 *---------------------------------------------------------------------------
 =#
typedef struct DBquadvar_ {
#=----------- Quad Variable -----------=#
    int            id;          #= Identifier for this object =#
    char          *name;        #= Name of variable =#
    char          *units;       #= Units for variable, e.g, 'mm/ms' =#
    char          *label;       #= Label (perhaps for editing purposes) =#
    int            cycle;       #= Problem cycle number =#
    int            meshid;      #= Identifier for associated mesh (Deprecated Sep2005) =#

    DB_DTPTR     **vals;        #= Array of pointers to data arrays =#
    int            datatype;    #= Type of data pointed to by 'val' =#
    int            nels;        #= Number of elements in each array =#
    int            nvals;       #= Number of arrays pointed to by 'vals' =#
    int            ndims;       #= Rank of variable =#
    int            dims[3];     #= Number of elements in each dimension =#

    int            major_order; #= 1 indicates row-major for multi-d arrays =#
    int            stride[3];   #= Offsets to adjacent elements  =#
    int            min_index[3];  #= Index in each dimension of 1st
                                   * non-phoney =#
    int            max_index[3];  #= Index in each dimension of last
                                   * non-phoney =#
    int            origin;      #= '0' or '1' =#
    float          time;        #= Problem time =#
    double         dtime;       #= Problem time, double data type =#
   #=
    * The following field really only contains 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetQuadvar() which
    * can cause three doubles to be stored there instead of three floats.
    =#
    float          align[6];    #= Centering and alignment per dimension =#

    DB_DTPTR     **mixvals;     #= nvals ptrs to data arrays for mixed zones =#
    int            mixlen;      #= Num of elmts in each mixed zone data
                                 * array =#

    int            use_specmf;  #= Flag indicating whether to apply species
                                 * mass fractions to the variable. =#

    int            ascii_labels;#= Treat variable values as ASCII values
                                   by rounding to the nearest integer in
                                   the range [0, 255] =#
    char          *meshname;    #= Name of associated mesh =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    char         **region_pnames;
    int            conserved;   #= indicates if the variable should be conserved
                                   under various operations such as interp. =#
    int            extensive;   #= indicates if the variable reprsents an extensiv
                                   physical property (as opposed to intensive) =#
    int            centering;   #= explicit centering knowledge; should agree
                                   with alignment. =#
} DBquadvar;

typedef struct DBucdvar_ {
#=----------- Unstructured Cell Data (UCD) Variable -----------=#
    int            id;          #= Identifier for this object =#
    char          *name;        #= Name of variable =#
    int            cycle;       #= Problem cycle number =#
    char          *units;       #= Units for variable, e.g, 'mm/ms' =#
    char          *label;       #= Label (perhaps for editing purposes) =#
    float          time;        #= Problem time =#
    double         dtime;       #= Problem time, double data type =#
    int            meshid;      #= Identifier for associated mesh (Deprecated Sep2005) =#

    DB_DTPTR     **vals;        #= Array of pointers to data arrays =#
    int            datatype;    #= Type of data pointed to by 'vals' =#
    int            nels;        #= Number of elements in each array =#
    int            nvals;       #= Number of arrays pointed to by 'vals' =#
    int            ndims;       #= Rank of variable =#
    int            origin;      #= '0' or '1' =#

    int            centering;   #= Centering within mesh (nodal or zonal) =#
    DB_DTPTR     **mixvals;     #= nvals ptrs to data arrays for mixed zones =#
    int            mixlen;      #= Num of elmts in each mixed zone data
                                 * array =#

    int            use_specmf;  #= Flag indicating whether to apply species
                                 * mass fractions to the variable. =#
    int            ascii_labels;#= Treat variable values as ASCII values
                                   by rounding to the nearest integer in
                                   the range [0, 255] =#
    char          *meshname;    #= Name of associated mesh =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    char         **region_pnames;
    int            conserved;   #= indicates if the variable should be conserved
                                   under various operations such as interp. =#
    int            extensive;   #= indicates if the variable reprsents an extensiv
                                   physical property (as opposed to intensive) =#
} DBucdvar;

typedef struct DBmeshvar_ {
#=----------- Generic Mesh-Data Variable -----------=#
    int            id;          #= Identifier for this object =#
    char          *name;        #= Name of variable =#
    char          *units;       #= Units for variable, e.g, 'mm/ms' =#
    char          *label;       #= Label (perhaps for editing purposes) =#
    int            cycle;       #= Problem cycle number =#
    int            meshid;      #= Identifier for associated mesh (Deprecated Sep2005) =#

    DB_DTPTR     **vals;        #= Array of pointers to data arrays =#
    int            datatype;    #= Type of data pointed to by 'val' =#
    int            nels;        #= Number of elements in each array =#
    int            nvals;       #= Number of arrays pointed to by 'vals' =#
    int            nspace;      #= Spatial rank of variable =#
    int            ndims;       #= Rank of 'vals' array(s) (computatnl rank) =#

    int            origin;      #= '0' or '1' =#
    int            centering;   #= Centering within mesh (nodal,zonal,other) =#
    float          time;        #= Problem time =#
    double         dtime;       #= Problem time, double data type =#
   #=
    * The following field really only contains 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetPointvar() which
    * can cause three doubles to be stored there instead of three floats.
    =#
    float          align[6];    #= Alignmnt per dimension if
                                 * centering==other =#

    #= Stuff for multi-dimensional arrays (ndims > 1) =#
    int            dims[3];     #= Number of elements in each dimension =#
    int            major_order; #= 1 indicates row-major for multi-d arrays =#
    int            stride[3];   #= Offsets to adjacent elements  =#
   #=
    * The following two fields really only contain 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetUcdmesh() which
    * can cause three doubles to be stored there instead of three floats.
    =#
    int            min_index[6];  #= Index in each dimension of 1st
                                   * non-phoney =#
    int            max_index[6];  #= Index in each dimension of last
                                    non-phoney =#

    int            ascii_labels;#= Treat variable values as ASCII values
                                   by rounding to the nearest integer in
                                   the range [0, 255] =#
    char          *meshname;      #= Name of associated mesh =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    char         **region_pnames;
    int            conserved;   #= indicates if the variable should be conserved
                                   under various operations such as interp. =#
    int            extensive;   #= indicates if the variable reprsents an extensiv
                                   physical property (as opposed to intensive) =#
} DBmeshvar;
typedef DBmeshvar DBpointvar; #= better named alias for pointvar =#

typedef struct DBmaterial_ {
#=----------- Material Information -----------=#
    int            id;          #= Identifier =#
    char          *name;        #= Name of this material information block =#
    int            ndims;       #= Rank of 'matlist' variable =#
    int            origin;      #= '0' or '1' =#
    int            dims[3];     #= Number of elements in each dimension =#
    int            major_order; #= 1 indicates row-major for multi-d arrays =#
    int            stride[3];   #= Offsets to adjacent elements in matlist =#

    int            nmat;        #= Number of materials =#
    int           *matnos;      #= Array [nmat] of valid material numbers =#
    char         **matnames;    #= Array of material names   =#
    int           *matlist;     #= Array[nzone] w/ mat. number or mix index =#
    int            mixlen;      #= Length of mixed data arrays (mix_xxx) =#
    int            datatype;    #= Type of volume-fractions (double,float) =#
    DB_DTPTR      *mix_vf;      #= Array [mixlen] of volume fractions =#
    int           *mix_next;    #= Array [mixlen] of mixed data indeces =#
    int           *mix_mat;     #= Array [mixlen] of material numbers =#
    int           *mix_zone;    #= Array [mixlen] of back pointers to mesh =#

    char         **matcolors;   #= Array of material colors =#
    char          *meshname;    #= Name of associated mesh =#
    int            allowmat0;   #= Flag to allow material "0" =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
} DBmaterial;

typedef struct DBmatspecies_ {
#=----------- Species Information -----------=#
    int            id;          #= Identifier =#
    char          *name;        #= Name of this matspecies information block =#
    char          *matname;     #= Name of material object with which the
                                 * material species object is associated. =#
    int            nmat;        #= Number of materials =#
    int           *nmatspec;    #= Array of lngth nmat of the num of material
                                 * species associated with each material. =#
    int            ndims;       #= Rank of 'speclist' variable =#
    int            dims[3];     #= Number of elements in each dimension of the
                                 * 'speclist' variable. =#
    int            major_order; #= 1 indicates row-major for multi-d arrays =#
    int            stride[3];   #= Offsts to adjacent elmts in 'speclist'  =#

    int            nspecies_mf; #= Total number of species mass fractions. =#
    DB_DTPTR      *species_mf;  #= Array of length nspecies_mf of mass
                                 * frations of the material species. =#
    int           *speclist;    #= Zone array of dimensions described by ndims
                                 * and dims.  Each element of the array is an
                                 * index into one of the species mass fraction
                                 * arrays.  A positive value is the index in
                                 * the species_mf array of the mass fractions
                                 * of the clean zone's material species:
                                 * species_mf[speclist[i]] is the mass fraction
                                 * of the first species of material matlist[i]
                                 * in zone i. A negative value means that the
                                 * zone is a mixed zone and that the array
                                 * mix_speclist contains the index to the
                                 * species mas fractions: -speclist[i] is the
                                 * index in the 'mix_speclist' array for zone
                                 * i. =#
    int            mixlen;      #= Length of 'mix_speclist' array. =#
    int           *mix_speclist;  #= Array of lgth mixlen of 1-orig indices
                                   * into the 'species_mf' array.
                                   * species_mf[mix_speclist[j]] is the index
                                   * in array species_mf' of the first of the
                                   * mass fractions for material
                                   * mix_mat[j]. =#

    int            datatype;    #= Datatype of mass fraction data. =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    char         **specnames;   #= Array of species names; length is sum of nmatspec   =#
    char         **speccolors;  #= Array of species colors; length is sum of nmatspec =#
} DBmatspecies;

typedef struct DBcsgzonelist_ {
#=----------- CSG Zonelist -----------=#
    int            nregs;       #= Number of regions in regionlist =#
    int            origin;      #= '0' or '1' =#

    int           *typeflags;   #= [nregs] type info about each region =#
    int           *leftids;     #= [nregs] left operand region refs =#
    int           *rightids;    #= [nregs] right operand region refs =#
    void          *xform;       #= [lxforms] transformation coefficients =#
    int            lxform;      #= length of xforms array =#
    int            datatype;    #= type of data in xforms array =#

    int            nzones;      #= number of zones =#
    int           *zonelist;    #= [nzones] region ids (complete regions) =#
    int            min_index;   #= Index of first real zone =#
    int            max_index;   #= Index of last real zone =#

#=--------- Optional zone attributes ---------=#
    char         **regnames;   #= [nregs] names of each region =#
    char         **zonenames;  #= [nzones] names of each zone =#
} DBcsgzonelist;

typedef struct DBcsgmesh_ {
#=----------- CSG Mesh -----------=#
    int            block_no;    #= Block number for this mesh =#
    int            group_no;    #= Block group number for this mesh =#
    char          *name;        #= Name associated with mesh =#
    int            cycle;       #= Problem cycle number =#
    char          *units[3];    #= Units for variable, e.g, 'mm/ms' =#
    char          *labels[3];   #= Label associated with each dimension =#

    int            nbounds;     #= Total number of boundaries =#
    int           *typeflags;   #= nbounds boundary type info flags =#
    int           *bndids;      #= optional, nbounds explicit ids =#

    void          *coeffs;      #= coefficients in the representation of
                                   each boundary =#
    int            lcoeffs;     #= length of coeffs array =#
    int           *coeffidx;    #= array of nbounds offsets into coeffs
                                   for each boundary's coefficients =#
    int            datatype;    #= data type of coeffs data =#

    float          time;        #= Problem time =#
    double         dtime;       #= Problem time, double data type =#
    double         min_extents[3];  #= Min mesh extents [ndims] =#
    double         max_extents[3];  #= Max mesh extents [ndims] =#

    int            ndims;       #= Number of spatial & topological dimensions =#
    int            origin;      #= '0' or '1' =#

    DBcsgzonelist *zones;       #= Data structure describing mesh zones =#

#=--------- Optional boundary attributes ---------=#
    char         **bndnames;     #= [nbounds] boundary names =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    char          *mrgtree_name; #= optional name of assoc. mrgtree object =#
    int            tv_connectivity;
    int            disjoint_mode;
} DBcsgmesh;

typedef struct DBcsgvar_ {
#=----------- CSG Variable -----------=#
    char          *name;        #= Name of variable =#
    int            cycle;       #= Problem cycle number =#
    char          *units;       #= Units for variable, e.g, 'mm/ms' =#
    char          *label;       #= Label (perhaps for editing purposes) =#
    float          time;        #= Problem time =#
    double         dtime;       #= Problem time, double data type =#

    void         **vals;        #= Array of pointers to data arrays =#
    int            datatype;    #= Type of data pointed to by 'vals' =#
    int            nels;        #= Number of elements in each array =#
    int            nvals;       #= Number of arrays pointed to by 'vals' =#

    int            centering;   #= Centering within mesh (nodal or zonal) =#

    int            use_specmf;  #= Flag indicating whether to apply species
                                 * mass fractions to the variable. =#
    int            ascii_labels;#= Treat variable values as ASCII values
                                   by rounding to the nearest integer in
                                   the range [0, 255] =#
    char          *meshname;    #= Name of associated mesh =#
    int            guihide;     #= Flag to hide from post-processor's GUI =#
    char         **region_pnames;
    int            conserved;   #= indicates if the variable should be conserved
                                   under various operations such as interp. =#
    int            extensive;   #= indicates if the variable reprsents an extensiv
                                   physical property (as opposed to intensive) =#
} DBcsgvar;

#=-------------------------------------------------------------------------
 * A compound array is an array whose elements are simple arrays. A simple
 * array is an array whose elements are all of the same primitive data
 * type: float, double, integer, long...  All of the simple arrays of
 * a compound array have elements of the same data type.
 *-------------------------------------------------------------------------
 =#
typedef struct DBcompoundarray_ {
    int            id;          #=identifier of the compound array =#
    char          *name;        #=name of te compound array  =#
    char         **elemnames;   #=names of the simple array elements =#
    int           *elemlengths; #=lengths of the simple arrays  =#
    int            nelems;      #=number of simple arrays  =#
    void          *values;      #=simple array values   =#
    int            nvalues;     #=sum reduction of `elemlengths' vector =#
    int            datatype;    #=simple array element data type =#
} DBcompoundarray;

typedef struct DBoptlist_ {

    int           *options;     #= Vector of option identifiers =#
    void         **values;      #= Vector of pointers to option values =#
    int            numopts;     #= Number of options defined =#
    int            maxopts;     #= Total length of option/value arrays =#

} DBoptlist;

typedef struct DBobject_ {

    char          *name;
    char          *type;        #= Type of group/object =#
    char         **comp_names;  #= Array of component names =#
    char         **pdb_names;   #= Array of internal (PDB) variable names =#
    int            ncomponents; #= Number of components =#
    int            maxcomponents;  #= Max number of components =#

} DBobject;

typedef struct _DBmrgtnode {
    char *name;
    int  narray;
    char **names;
    int type_info_bits;
    int max_children;
    char *maps_name;
    int nsegs;
    int *seg_ids;
    int *seg_lens;
    int *seg_types;
    int num_children;
    struct _DBmrgtnode **children;

    #= internal stuff to support updates, i/o, etc. =#
    int walk_order;
    struct _DBmrgtnode  *parent;
} DBmrgtnode;

typedef void (*DBmrgwalkcb)(DBmrgtnode *tnode, int nat_node_num, void *data);

typedef struct _DBmrgtree {
    char *name;
    char *src_mesh_name;
    int src_mesh_type;
    int type_info_bits;
    int num_nodes;
    DBmrgtnode *root;
    DBmrgtnode *cwr;

    char **mrgvar_onames;
    char **mrgvar_rnames;
} DBmrgtree;

typedef struct _DBmrgvar {
    char *name;
    char *mrgt_name;
    int ncomps;
    char **compnames;
    int nregns;
    char **reg_pnames;
    int datatype;
    void **data;
} DBmrgvar ;

typedef struct _DBgroupelmap {
    char *name;
    int num_segments;
    int *groupel_types;
    int *segment_lengths;
    int *segment_ids;
    int **segment_data;
    void **segment_fracs;
    int fracs_data_type;
} DBgroupelmap;
=#

const DB_MAX_EXPSTRS = 8 #= NO_FORTRAN_DEFINE =#

#=
typedef struct _DBnamescheme
{
    char *fmt;              #= orig. format string =#
    char const **fmtptrs;   #= ptrs into first (printf) part of fmt for each conversion spec. =#
    int fmtlen;             #= len of first part of fmt =#
    int ncspecs;            #= # of conversion specs in first part of fmt =#
    char delim;             #= delimiter char used for parts of fmt =#
    int nembed;             #= number of last embedded string encountered =#
    char *embedstrs[DB_MAX_EXPSTRS]; #= ptrs to copies of embedded strings =#
    int arralloc;           #= flag indicating if Silo allocated the arrays or not =#
    int narrefs;            #= number of array refs in conversion specs =#
    char **arrnames;        #= array names used by array refs =#
    void **arrvals;         #= pointer to actual array data assoc. with each name =#
    int  *arrsizes;         #= size of each array (only needed for deallocating external arrays of strings) =#
    char **exprstrs;        #= expressions to be evaluated for each conv. spec. =#
} DBnamescheme;

typedef struct DBfile *___DUMMY_TYPE;  #= Satisfy ANSI scope rules =#

#=
 * All file formats are now anonymous except for the public properties
 * and public methods.
 =#
typedef struct DBfile_pub {

    #= Public Properties =#
    char          *name;        #=name of file    =#
    int            type;        #=file type    =#
    DBtoc         *toc;         #=table of contents   =#
    int            dirid;       #=directory ID    =#
    int            fileid;      #=unique file id [0,DB_NFILES-1] =#
    int            pathok;      #=driver handles paths in names =#
    int            Grab;        #=drive has access to low-level interface =#
    void          *GrabId;      #=pointer to low-level driver descriptor =#
    char          *file_lib_version; #= version of lib file was created with =#

    #= Public Methods =#
    int            (*close)(struct DBfile *);
    int            (*exist)(struct DBfile *, char const *);
    int            (*pause)(struct DBfile *);
    int            (*cont)(struct DBfile *);
    int            (*newtoc)(struct DBfile *);
    DBObjectType   (*inqvartype)(struct DBfile *, char const *);
    int            (*uninstall)(struct DBfile *);
    DBobject      *(*g_obj)(struct DBfile *, char const *);
    int            (*c_obj)(struct DBfile *, DBobject const *, int);
    int            (*w_obj)(struct DBfile *, DBobject const *, int);
    void          *(*g_comp)(struct DBfile *, char const *, char const *);
    int            (*g_comptyp)(struct DBfile *, char const *, char const *);
    int            (*w_comp)(struct DBfile *, DBobject *, char const *, char const *,
                             char const *, void const *, int, long const *);
    int            (*write) (struct DBfile *, char const *, void const *, int const *, int, int);




    int            (*writeslice)(struct DBfile *, char *, void *, int,
                                 int[], int[], int[], int[], int);
    void          *(*g_attr)(struct DBfile *, char *, char *);
    int            (*g_dir)(struct DBfile *, char *);
    int            (*mkdir)(struct DBfile *, char *);
    int            (*cd)(struct DBfile *, char *);
    int            (*cdid)(struct DBfile *, int);
    int            (*r_att)(struct DBfile *, char *, char *, void *);
    int            (*r_var)(struct DBfile *, char *, void *);
    int            (*r_var1)(struct DBfile *, char *, int, void *);
    int            (*module)(struct DBfile *, FILE *);
    int            (*r_varslice)(struct DBfile *, char *, int *, int *, int *,
                                 int, void *);
    int            (*g_compnames)(struct DBfile *, char *, char ***, char ***);
    DBcompoundarray *(*g_ca)(struct DBfile *, char *);
    DBcurve       *(*g_cu)(struct DBfile *, char *);
    DBdefvars     *(*g_defv)(struct DBfile *, char const *);
    DBmaterial    *(*g_ma)(struct DBfile *, char *);
    DBmatspecies  *(*g_ms)(struct DBfile *, char *);
    DBmultimesh   *(*g_mm)(struct DBfile *, char *);
    DBmultivar    *(*g_mv)(struct DBfile *, char *);
    DBmultimat    *(*g_mt)(struct DBfile *, char *);
    DBmultimatspecies *(*g_mms)(struct DBfile *, char *);
    DBpointmesh   *(*g_pm)(struct DBfile *, char *);
    DBmeshvar     *(*g_pv)(struct DBfile *, char *);
    DBquadmesh    *(*g_qm)(struct DBfile *, char *);
    DBquadvar     *(*g_qv)(struct DBfile *, char *);
    DBucdmesh     *(*g_um)(struct DBfile *, char *);
    DBucdvar      *(*g_uv)(struct DBfile *, char *);
    DBfacelist    *(*g_fl)(struct DBfile *, char *);
    DBzonelist    *(*g_zl)(struct DBfile *, char *);
    void          *(*g_var)(struct DBfile *, char *);
    int            (*g_varbl)(struct DBfile *, char *);  #=byte length =#
    int            (*g_varlen)(struct DBfile *, char *);  #=nelems =#
    int            (*g_vardims)(struct DBfile*, char*, int, int*); #=dims=#
    int            (*g_vartype)(struct DBfile *, char *);
    int            (*i_meshname)(struct DBfile *, char *, char *);
    int            (*i_meshtype)(struct DBfile *, char *);
    int            (*p_ca)(struct DBfile *, char *, char **, int *, int,
                           void *, int, int, DBoptlist *);
    int            (*p_cu)(struct DBfile *, char *, void *, void *, int, int,
                           DBoptlist *);
    int            (*p_defv)(struct DBfile *, char const *, int,
                           char **, int const *, char **,
                           DBoptlist **);
    int            (*p_fl)(struct DBfile *, char *, int, int, int *, int, int,
                           int *, int *, int *, int, int *, int *, int);
    int            (*p_ma)(struct DBfile *, char *, char *, int, int *, int *,
                           int *, int, int *, int *, int *, DB_DTPTR1, int, int,
                           DBoptlist *);
    int            (*p_ms)(struct DBfile *, char *, char *, int, int *, int *,
                           int *, int, int, DB_DTPTR1, int *, int, int,
                           DBoptlist *);
    int            (*p_mm)(struct DBfile *, char const*, int, char const *const *, int const *,
                           DBoptlist const *);
    int            (*p_mv)(struct DBfile *, char *, int, char **, int *,
                           DBoptlist *);
    int            (*p_mt)(struct DBfile *, char *, int, char **, DBoptlist *);
    int            (*p_mms)(struct DBfile *, char *, int, char **, DBoptlist *);
    int            (*p_pm)(struct DBfile *, char *, int, DB_DTPTR2, int, int,
                           DBoptlist *);
    int            (*p_pv)(struct DBfile *, char *, char *, int, DB_DTPTR2, int,
                           int, DBoptlist *);
    int            (*p_qm)(struct DBfile *, char *, char **, DB_DTPTR2, int *,
                           int, int, int, DBoptlist *);
    int            (*p_qv)(struct DBfile *, char *, char *, int, char **,
                           DB_DTPTR2, int *, int, DB_DTPTR2, int, int, int,
                           DBoptlist *);
    int            (*p_um)(struct DBfile *, char *, int, char **, DB_DTPTR2,
                           int, int, char *, char *, int, DBoptlist *);
    int            (*p_sm)(struct DBfile *, char *, char *,
                           int, char *, char *, DBoptlist *);
    int            (*p_uv)(struct DBfile *, char *, char *, int, char **,
                           DB_DTPTR2, int, DB_DTPTR2, int, int, int,
                           DBoptlist *);
    int            (*p_zl)(struct DBfile *, char *, int, int, int *, int, int,
                           int *, int *, int);
    int            (*p_zl2)(struct DBfile *, char *, int, int, int *, int, int,
                            int, int, int *, int *, int *, int, DBoptlist *);
    #= MCM-27Jul04: We added these to the end to avert potential
       link-time compatibility issues with older versions of the
       library. Some user's of Silo circumvent its version check
       which would ordinarily keep different versions from being
       mixed by defining an appropriate global symbol. =#
    DBphzonelist  *(*g_phzl)(struct DBfile *, char *);
    int            (*p_phzl)(struct DBfile *, char *,
                             int, int *, int, int *, char *,
                             int, int *, int, int *,
                             int, int, int,
                             DBoptlist *);
    int            (*p_csgzl)(struct DBfile *, char const *, int, int const *,
                              int const *, int const *, void const *, int, int,
                              int, int const *, DBoptlist *);
    DBcsgzonelist *(*g_csgzl)(struct DBfile *, char const *);
    int            (*p_csgm)(struct DBfile *, char const *, int, int,
                             int const *, int const *,
                             void const *, int, int, double const *,
                             char const *, DBoptlist *);
    DBcsgmesh     *(*g_csgm)(struct DBfile *, char const *);
    int            (*p_csgv)(struct DBfile *, char const *, char const *, int,
                             char **, void **, int, int, int,
                             DBoptlist *);
    DBcsgvar      *(*g_csgv)(struct DBfile *, char const *);
    DBmultimeshadj *(*g_mmadj)(struct DBfile *, char const *, int, int const *);
    int            (*p_mmadj)(struct DBfile *, char const *, int, int const *,
                              int const *, int const *, int const *, int const *,
                              int DB_CONSTARR2, int const *, int DB_CONSTARR2,
                              DBoptlist const *optlist);
    int            (*p_mrgt)(struct DBfile *dbfile, char const *name, char const *mesh_name,
                             DBmrgtree *tree, DBoptlist *opts);
    DBmrgtree     *(*g_mrgt)(struct DBfile *, char const *name);
    int            (*p_grplm)(struct DBfile *dbfile, char const *map_name,
                             int num_segments, int *groupel_types,
			     int *segment_lengths, int *segment_ids,
			     int **segment_data, void **segment_fracs,
                             int fracs_data_type, DBoptlist *opts);
    DBgroupelmap  *(*g_grplm)(struct DBfile *dbfile, char const *name);
    int            (*p_mrgv)(struct DBfile *dbfile, char const *name,
                             char const *mrgt_name,
                             int ncomps, char **compnames,
                             int nregns, char **reg_pnames,
                             int datatype, void **data, DBoptlist *opts);
    DBmrgvar      *(*g_mrgv)(struct DBfile *dbfile, char const *name);
    int            (*free_z)(struct DBfile *, char const *);
    int            (*cpdir)(struct DBfile *, char const *,
                            struct DBfile *, char const *);

    int          (*sort_obo)(struct DBfile *dbfile, int nobjs,
                             char const *const *obj_names, int *ranks);
} DBfile_pub;

typedef struct DBfile {
    DBfile_pub     pub;
    #=private part follows per device driver =#
} DBfile;

typedef void (*DBErrFunc_t)(char*);


#= The first prototypes here are the functions by which client code first
 * gets into Silo.  They are separated out because they do a version number
 * check for us.  Client code doesn't actually use these functions.
 * Instead, it uses macros like DBOpen, DBCreate, etc.
 *
 * If any functions are added that provide first-call access to Silo, they
 * should be set up as macro/function pairs, just as these are.  The way to
 * determine if a function is a "first-call" function is to ask whether
 * there are any Silo calls that must happen before it.  If there are not,
 * then the function is a "first-call" function and should have this
 * macro/function pair.  =#
=#

const SILO_VSTRING_NAME = "_silolibinfo"
const SILO_VSTRING = PACKAGE_VERSION
const DBMkdir = DBMkDir
