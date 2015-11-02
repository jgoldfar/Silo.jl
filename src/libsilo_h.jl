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
y::Cdouble subscripted variants will have only a single star. Rest
   assured they are still treated as doubley subscripted in the
   implementation. =#
# const DB_DTPTR = Void  #= NO_FORTRAN_DEFINE =#
typealias DB_DTPTR Void
# const DB_DTPTR1 = Ptr{Void} #= NO_FORTRAN_DEFINE =#
typealias DB_DTPTR1 Ptr{Void}
# const DB_DTPTR2 = Ptr{Void} #= NO_FORTRAN_DEFINE =#
typealias DB_DTPTR2 Ptr{Void}

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
DB_HDF5_OPTS(OptsId) = (DB_HDF5X|((OptsId&0x3F)<<11))

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
# Process "typedef enum" after conversion to baremodule with grep regexp:
# (\S+?)=(\S+?), -> const \1 = \2
baremodule DBObjectType
const DB_INVALID_OBJECT= -1       #=causes enum to be signed, do not remove,
                                       space before minus sign necessary for lint=#

const DB_COLLINEAR = 130
const DB_NONCOLLINEAR = 131
const DB_QUAD_RECT = DB_COLLINEAR
const DB_QUAD_CURV = DB_NONCOLLINEAR
const DB_QUADRECT = DB_QUAD_RECT
const DB_QUADCURV = DB_QUAD_CURV
const DB_QUADMESH = 500
const DB_QUADVAR = 501
const DB_UCDMESH = 510
const DB_UCDVAR = 511
const DB_MULTIMESH = 520
const DB_MULTIVAR = 521
const DB_MULTIMAT = 522
const DB_MULTIMATSPECIES = 523
const DB_MULTIBLOCKMESH = DB_MULTIMESH
const DB_MULTIBLOCKVAR = DB_MULTIVAR
const DB_MULTIMESHADJ = 524
const DB_MATERIAL = 530
const DB_MATSPECIES = 531
const DB_FACELIST = 550
const DB_ZONELIST = 551
const DB_EDGELIST = 552
const DB_PHZONELIST = 553
const DB_CSGZONELIST = 554
const DB_CSGMESH = 555
const DB_CSGVAR = 556
const DB_CURVE = 560
const DB_DEFVARS = 565
const DB_POINTMESH = 570
const DB_POINTVAR = 571
const DB_ARRAY = 580
const DB_DIR = 600
const DB_VARIABLE = 610
const DB_MRGTREE = 611
const DB_GROUPELMAP = 612
const DB_MRGVAR = 613
const DB_USERDEF = 700
end # module

#= Data types =#
include("DBdatatype.jl")
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
I4D(s,i,j,k,l) = (l)*s[3]+(k)*s[2]+(j)*s[1]+(i)*s[0]
I3D(s,i,j,k) = (k)*s[2]+(j)*s[1]+(i)*s[0]
I2D(s,i,j) = (j)*s[1]+(i)*s[0]

#=-------------------------------------------------------------------------
 * Structures (just the public parts).
 *-------------------------------------------------------------------------
 =#


#=
 * Database table of contents for the current directory only.
 =#

# Struct processing regexp:
# To process char** types:
# char\s*\*\*(\w+).* -> \1::Ptr{Ptr{UInt8}}
# To process int types:
# ^\s*int\s*(\w+) ->   \1::Cint
# To process char* types:
# ^\s*char\s*\*(\w+) ->   \1::Ptr{UInt8}
# To process int* types:
# ^\s*int\s*\*(\w+) ->   \1::Ptr{Cint}
# To process int* types:
# ^\s*int\s*\*\*(\w+) ->   \1::Ptr{Ptr{Cint}}
# To process float types:
# ^\s*float\s*(\w+) ->   \1::Cfloat
# Note: previous require post-processing in the case of [...] type constructs.
# To process double types:
# ^\s*double\s*(\w+) ->   \1::Cdouble
# To process double* types:
# ^\s*double\s*\*(\w+) ->   \1::Ptr{Cdouble}
# To process void* types:
# ^\s*void\s*\*(\w+) ->   \1::Ptr{Void}
# To process DB_DTPTR* types:
# ^\s*DB_DTPTR\s*\*(\w+) ->   \1::Ptr{DB_DTPTR}
# To process DB_DTPTR** types:
# ^\s*DB_DTPTR\s*\*\*(\w+) ->   \1::Ptr{Ptr{DB_DTPTR}}
# To process void** types:
# ^\s*void\s*\*\*(\w+) ->   \1::Ptr{Ptr{Void}}
# To process DBphzonelist* types:
# ^\s*DBphzonelist\s*\*(\w+) ->   \1::Ptr{DBphzonelist}
# Also, DBfacelist, DBzonelist, DBmrgtnode, DBedgelist, DBcsgzonelist

# Automated replacement of C with Julia syntax:
# typedef struct (\w+) { -> type \1
# ^} -> end #type
# end #type (\w+) -> end #type \1\ntypealias \1 \1_

# Julia version of DBtoc_ struct defined on silo.h line 690
type DBtoc_

  curve_names::Ptr{Ptr{UInt8}}
  ncurve::Cint

  multimesh_names::Ptr{Ptr{UInt8}}
  nmultimesh::Cint

  multimeshadj_names::Ptr{Ptr{UInt8}}
  nmultimeshadj::Cint

  multivar_names::Ptr{Ptr{UInt8}}
  nmultivar::Cint

  multimat_names::Ptr{Ptr{UInt8}}
  nmultimat::Cint

  multimatspecies_names::Ptr{Ptr{UInt8}}
  nmultimatspecies::Cint

  csgmesh_names::Ptr{Ptr{UInt8}}
  ncsgmesh::Cint

  csgvar_names::Ptr{Ptr{UInt8}}
  ncsgvar::Cint

  defvars_names::Ptr{Ptr{UInt8}}
  ndefvars::Cint

  qmesh_names::Ptr{Ptr{UInt8}}
  nqmesh::Cint

  qvar_names::Ptr{Ptr{UInt8}}
  nqvar::Cint

  ucdmesh_names::Ptr{Ptr{UInt8}}
  nucdmesh::Cint

  ucdvar_names::Ptr{Ptr{UInt8}}
  nucdvar::Cint

  ptmesh_names::Ptr{Ptr{UInt8}}
  nptmesh::Cint

  ptvar_names::Ptr{Ptr{UInt8}}
  nptvar::Cint

  mat_names::Ptr{Ptr{UInt8}}
  nmat::Cint

  matspecies_names::Ptr{Ptr{UInt8}}
  nmatspecies::Cint

  var_names::Ptr{Ptr{UInt8}}
  nvar::Cint

  obj_names::Ptr{Ptr{UInt8}}
  nobj::Cint

  dir_names::Ptr{Ptr{UInt8}}
  ndir::Cint

  array_names::Ptr{Ptr{UInt8}}
  narray::Cint

  mrgtree_names::Ptr{Ptr{UInt8}}
  nmrgtree::Cint

  groupelmap_names::Ptr{Ptr{UInt8}}
  ngroupelmap::Cint

  mrgvar_names::Ptr{Ptr{UInt8}}
  nmrgvar::Cint

end # type
typealias DBtoc DBtoc_

#=----------------------------------------------------------------------------
 * Database Curve Object
 *--------------------------------------------------------------------------
 =#

type DBcurve_
  #=----------- X vs. Y (Curve) Data -----------=#
  id::Cint          #= Identifier for this object =#
  datatype::Cint    #= Datatype for x and y (float, double) =#
  origin::Cint      #= '0' or '1' =#
  title::Ptr{UInt8}       #= Title for curve =#
  xvarname::Ptr{UInt8}    #= Name of domain (x) variable =#
  yvarname::Ptr{UInt8}    #= Name of range  (y) variable =#
  xlabel::Ptr{UInt8}      #= Label for x-axis =#
  ylabel::Ptr{UInt8}      #= Label for y-axis =#
  xunits::Ptr{UInt8}      #= Units for domain =#
  yunits::Ptr{UInt8}      #= Units for range  =#
  x::Ptr{DB_DTPTR}           #= Domain values for curve =#
  y::Ptr{DB_DTPTR}           #= Range  values for curve =#
  npts::Cint        #= Number of points in curve =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  reference::Ptr{UInt8}   #= Label to reference object =#
end #type

typealias DBcurve DBcurve_


type DBdefvars_
  ndefs::Cint       #= number of definitions =#
  names::Ptr{Ptr{UInt8}}
  types::Ptr{Cint}       #= [ndefs] derived variable types =#
  defns::Ptr{Ptr{UInt8}}
  guihides::Ptr{Cint}       #= [ndefs] flags to hide from
                                   post-processor's GUI =#
end #type
typealias DBdefvars DBdefvars_


type DBpointmesh_
  #=----------- Point Mesh -----------=#
  id::Cint          #= Identifier for this object =#
  block_no::Cint    #= Block number for this mesh =#
  group_no::Cint    #= Block group number for this mesh =#
  name::Ptr{UInt8}        #= Name associated with this mesh =#
  cycle::Cint       #= Problem cycle number =#
  units::Ptr{Ptr{UInt8}}#[3]    #= Units for each axis =#
  labels::Ptr{Ptr{UInt8}}#[3]   #= Labels for each axis =#
  title::Ptr{UInt8}       #= Title for curve =#
  coords::Ptr{Ptr{DB_DTPTR}}#[3]   #= Coordinate values =#
  time::Cfloat        #= Problem time =#
  dtime::Cdouble       #= Problem time, double data type =#
  #=
    * The following two fields really only contain 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetPointmesh() which
    * can cause three doubles to be stored there instead of three floats.
    =#
  min_extents::Ptr{Cfloat}#[6]  #= Min mesh extents [ndims] =#
  max_extents::Ptr{Cfloat}#[6]  #= Max mesh extents [ndims] =#
  datatype::Cint    #= Datatype for coords (float, double) =#
  ndims::Cint       #= Number of computational dimensions =#
  nels::Cint        #= Number of elements in mesh =#
  origin::Cint      #= '0' or '1' =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  gnodeno::Ptr{Void}     #= global node ids =#
  mrgtree_name::Ptr{UInt8} #= optional name of assoc. mrgtree object =#
  gnznodtype::Cint  #= datatype for global node/zone ids =#
end #type
typealias DBpointmesh DBpointmesh_

#=----------------------------------------------------------------------------
 * Multi-Block Mesh Object
 *--------------------------------------------------------------------------
 =#

type DBmultimesh_
  #=----------- Multi-Block Mesh -----------=#
  id::Cint          #= Identifier for this object =#
  nblocks::Cint     #= Number of blocks in mesh =#
  ngroups::Cint     #= Number of block groups in mesh =#
  meshids::Ptr{Cint}     #= Array of mesh-ids which comprise mesh =#
  meshnames::Ptr{Ptr{UInt8}}
  meshtypes::Ptr{Cint}   #= Array of mesh-type indicators [nblocks] =#
  dirids::Ptr{Cint}      #= Array of directory ID's which contain blk =#
  blockorigin::Cint #= Origin (0 or 1) of block numbers =#
  grouporigin::Cint #= Origin (0 or 1) of group numbers =#
  extentssize::Cint #= size of each extent tuple =#
  extents::Ptr{Cdouble}     #= min/max extents of coords of each block =#
  zonecounts::Ptr{Cint}  #= array of zone counts for each block =#
  has_external_zones::Ptr{Cint}  #= external flags for each block =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  lgroupings::Cint  #= size of groupings array =#
  groupings::Ptr{Cint}  #= Array of mesh-ids, group-ids, and counts =#
  groupnames::Ptr{Ptr{UInt8}}
  mrgtree_name::Ptr{UInt8}#= optional name of assoc. mrgtree object =#
  tv_connectivity::Cint
  disjoint_mode::Cint
  topo_dim::Cint    #= Topological dimension max of all blocks. =#
  file_ns::Ptr{UInt8}     #= namescheme for files (in lieu of meshnames) =#
  block_ns::Ptr{UInt8}    #= namescheme for block objects (in lieu of meshnames) =#
  block_type::Cint  #= constant block type for all blocks (in lieu of meshtypes) =#
  empty_list::Ptr{Cint}  #= list of empty block #'s (option for namescheme) =#
  empty_cnt::Cint   #= size of empty list =#
  repr_block_idx::Cint #= index of a 'representative' block =#
end #type
typealias DBmultimesh DBmultimesh_


#=----------------------------------------------------------------------------
 * Multi-Block Mesh Adjacency Object
 *--------------------------------------------------------------------------
 =#

type DBmultimeshadj_
  #=----------- Multi-Block Mesh Adjacency -----------=#
  nblocks::Cint     #= Number of blocks in mesh =#
  blockorigin::Cint #= Origin (0 or 1) of block numbers =#
  meshtypes::Ptr{Cint}   #= Array of mesh-type indicators [nblocks] =#
  nneighbors::Ptr{Cint}  #= Array [nblocks] neighbor counts =#
  lneighbors::Cint
  neighbors::Ptr{Cint}   #= Array [lneighbors] neighbor block numbers =#
  back::Ptr{Cint}        #= Array [lneighbors] neighbor block back =#
  totlnodelists::Cint
  lnodelists::Ptr{Cint}  #= Array [lneighbors] of node counts shared =#
  nodelists::Ptr{Ptr{Cint}}   #= Array [lneighbors] nodelists shared =#
  totlzonelists::Cint
  lzonelists::Ptr{Cint}  #= Array [lneighbors] of zone counts adjacent =#
  zonelists::Ptr{Ptr{Cint}}   #= Array [lneighbors] zonelists adjacent =#
end #type
typealias DBmultimeshadj DBmultimeshadj_

#=----------------------------------------------------------------------------
 * Multi-Block Variable Object
 *--------------------------------------------------------------------------
 =#

type DBmultivar_
  #=----------- Multi-Block Variable -----------=#
  id::Cint          #= Identifier for this object  =#
  nvars::Cint       #= Number of variables   =#
  ngroups::Cint     #= Number of block groups in mesh =#
  varnames::Ptr{Ptr{UInt8}}
  vartypes::Ptr{Cint}    #= variable types   =#
  blockorigin::Cint #= Origin (0 or 1) of block numbers =#
  grouporigin::Cint #= Origin (0 or 1) of group numbers =#
  extentssize::Cint #= size of each extent tuple =#
  extents::Ptr{Cdouble}     #= min/max extents of each block =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  region_pnames::Ptr{Ptr{UInt8}}
  mmesh_name::Ptr{UInt8}
  tensor_rank::Cint    #= DB_VARTYPE_XXX =#
  conserved::Cint   #= indicates if the variable should be conserved
                                   under various operations such as interp. =#
  extensive::Cint   #= indicates if the variable reprsents an extensiv
                                   physical property (as opposed to intensive) =#
  file_ns::Ptr{UInt8}     #= namescheme for files (in lieu of meshnames) =#
  block_ns::Ptr{UInt8}    #= namescheme for block objects (in lieu of meshnames) =#
  block_type::Cint  #= constant block type for all blocks (in lieu of meshtypes) =#
  empty_list::Ptr{Cint}  #= list of empty block #'s (option for namescheme) =#
  empty_cnt::Cint   #= size of empty list =#
  repr_block_idx::Cint #= index of a 'representative' block =#
end #type
typealias DBmultivar DBmultivar_

#=-------------------------------------------------------------------------
 * Multi-material
 *-------------------------------------------------------------------------
 =#

type DBmultimat_
  id::Cint          #= Identifier for this object  =#
  nmats::Cint       #= Number of materials   =#
  ngroups::Cint     #= Number of block groups in mesh =#
  matnames::Ptr{Ptr{UInt8}}
  blockorigin::Cint #= Origin (0 or 1) of block numbers =#
  grouporigin::Cint #= Origin (0 or 1) of group numbers =#
  mixlens::Ptr{Cint}     #= array of mixlen values in each mat =#
  matcounts::Ptr{Cint}   #= counts of unique materials in each block =#
  matlists::Ptr{Cint}    #= list of materials in each block =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  nmatnos::Cint     #= global number of materials over all pieces =#
  matnos::Ptr{Cint}      #= global list of material numbers =#
  matcolors::Ptr{Ptr{UInt8}}
  material_names::Ptr{Ptr{UInt8}}
  allowmat0::Cint   #= Flag to allow material "0" =#
  mmesh_name::Ptr{UInt8}
  file_ns::Ptr{UInt8}     #= namescheme for files (in lieu of meshnames) =#
  block_ns::Ptr{UInt8}    #= namescheme for block objects (in lieu of meshnames) =#
  empty_list::Ptr{Cint}  #= list of empty block #'s (option for namescheme) =#
  empty_cnt::Cint   #= size of empty list =#
  repr_block_idx::Cint #= index of a 'representative' block =#
end #type
typealias DBmultimat DBmultimat_


#=-------------------------------------------------------------------------
 * Multi-species
 *-------------------------------------------------------------------------
 =#

type DBmultimatspecies_
  id::Cint          #= Identifier for this object  =#
  nspec::Cint       #= Number of species   =#
  ngroups::Cint     #= Number of block groups in mesh =#
  specnames::Ptr{Ptr{UInt8}}
  blockorigin::Cint #= Origin (0 or 1) of block numbers =#
  grouporigin::Cint #= Origin (0 or 1) of group numbers =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  nmat::Cint        #= equiv. to nmatnos of a DBmultimat =#
  nmatspec::Ptr{Cint}    #= equiv. to matnos of a DBmultimat =#
  species_names::Ptr{Ptr{UInt8}}
  speccolors::Ptr{Ptr{UInt8}}
  file_ns::Ptr{UInt8}     #= namescheme for files (in lieu of meshnames) =#
  block_ns::Ptr{UInt8}    #= namescheme for block objects (in lieu of meshnames) =#
  empty_list::Ptr{Cint}  #= list of empty block #'s (option for namescheme) =#
  empty_cnt::Cint   #= size of empty list =#
  repr_block_idx::Cint #= index of a 'representative' block =#
end #type
typealias DBmultimatspecies DBmultimatspecies_


#=----------------------------------------------------------------------
 *  Definitions for the FaceList, ZoneList, and EdgeList structures
 *  used for describing UCD meshes.
 *----------------------------------------------------------------------
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

type DBzonelist_
  ndims::Cint       #= Number of dimensions (2,3) =#
  nzones::Cint      #= Number of zones in list =#
  nshapes::Cint     #= Number of zone shapes =#
  shapecnt::Ptr{Cint}    #= [nshapes] occurences of each shape =#
  shapesize::Ptr{Cint}   #= [nshapes] Number of nodes per shape =#
  shapetype::Ptr{Cint}   #= [nshapes] Type of shape =#
  nodelist::Ptr{Cint}    #= Sequent lst of nodes which comprise zones =#
  lnodelist::Cint   #= Number of nodes in nodelist =#
  origin::Cint      #= '0' or '1' =#
  min_index::Cint   #= Index of first real zone =#
  max_index::Cint   #= Index of last real zone =#

  #=--------- Optional zone attributes ---------=#
  zoneno::Ptr{Cint}      #= [nzones] zone number of each zone =#
  gzoneno::Ptr{Void}     #= [nzones] global zone number of each zone =#
  gnznodtype::Cint  #= datatype for global node/zone ids =#
end #type
typealias DBzonelist DBzonelist_


type DBphzonelist_
  nfaces::Cint      #= Number of faces in facelist (aka "facetable") =#
  nodecnt::Ptr{Cint}     #= Count of nodes in each face =#
  lnodelist::Cint   #= Length of nodelist used to construct faces =#
  nodelist::Ptr{Cint}    #= List of nodes used in all faces =#
  extface::Ptr{UInt8}     #= boolean flag indicating if a face is external =#
  nzones::Cint      #= Number of zones in this zonelist =#
  facecnt::Ptr{Cint}     #= Count of faces in each zone =#
  lfacelist::Cint   #= Length of facelist used to construct zones =#
  facelist::Ptr{Cint}    #= List of faces used in all zones =#
  origin::Cint      #= '0' or '1' =#
  lo_offset::Cint   #= Index of first non-ghost zone =#
  hi_offset::Cint   #= Index of last non-ghost zone =#

  #=--------- Optional zone attributes ---------=#
  zoneno::Ptr{Cint}      #= [nzones] zone number of each zone =#
  gzoneno::Ptr{Void}     #= [nzones] global zone number of each zone =#
  gnznodtype::Cint  #= datatype for global node/zone ids =#
end #type
typealias DBphzonelist DBphzonelist_


type DBfacelist_
  #=----------- Required components ------------=#
  ndims::Cint       #= Number of dimensions (2,3) =#
  nfaces::Cint      #= Number of faces in list =#
  origin::Cint      #= '0' or '1' =#
  nodelist::Ptr{Cint}    #= Sequent list of nodes comprise faces =#
  lnodelist::Cint   #= Number of nodes in nodelist =#

  #=----------- 3D components ------------------=#
  nshapes::Cint     #= Number of face shapes =#
  shapecnt::Ptr{Cint}    #= [nshapes] Num of occurences of each shape =#
  shapesize::Ptr{Cint}   #= [nshapes] Number of nodes per shape =#

  #=----------- Optional type component---------=#
  ntypes::Cint      #= Number of face types =#
  typelist::Ptr{Cint}    #= [ntypes] Type ID for each type =#
  types::Ptr{Cint}       #= [nfaces] Type info for each face =#

  #=--------- Optional node attributes ---------=#
  nodeno::Ptr{Cint}      #= [lnodelist] node number of each node =#

  #=----------- Optional zone-reference component---------=#
  zoneno::Ptr{Cint}      #= [nfaces] Zone number for each face =#
end #type
typealias DBfacelist DBfacelist_

type DBedgelist_
  ndims::Cint       #= Number of dimensions (2,3) =#
  nedges::Cint      #= Number of edges =#
  edge_beg::Ptr{Cint}    #= [nedges] =#
  edge_end::Ptr{Cint}    #= [nedges] =#
  origin::Cint      #= '0' or '1' =#
end #type
typealias DBedgelist DBedgelist_


type DBquadmesh_
  #=----------- Quad Mesh -----------=#
  id::Cint          #= Identifier for this object =#
  block_no::Cint    #= Block number for this mesh =#
  group_no::Cint    #= Block group number for this mesh =#
  name::Ptr{UInt8}        #= Name associated with mesh =#
  cycle::Cint       #= Problem cycle number =#
  coord_sys::Cint   #= Cartesian, cylindrical, spherical =#
  major_order::Cint #= 1 indicates row-major for multi-d arrays =#
  stride::Ptr{Cint}#[3]   #= Offsets to adjacent elements  =#
  coordtype::Cint   #= Coord array type: collinear,
                                 * non-collinear =#
  facetype::Cint    #= Zone face type: rect, curv =#
  planar::Cint      #= Sentinel: zones represent area or volume? =#
  coords::Ptr{Ptr{DB_DTPTR}}#[3]   #= Mesh node coordinate ptrs [ndims] =#
  datatype::Cint    #= Type of coordinate arrays (double,float) =#
  time::Cfloat        #= Problem time =#
  dtime::Cdouble       #= Problem time, double data type =#
  #=
    * The following two fields really only contain 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetQuadmesh() which
    * can cause three doubles to be stored there instead of three floats.
    =#
  min_extents::Ptr{Cfloat}#[6]  #= Min mesh extents [ndims] =#
  max_extents::Ptr{Cfloat}#[6]  #= Max mesh extents [ndims] =#
  labels::Ptr{Ptr{UInt8}}#[3]   #= Label associated with each dimension =#
  units::Ptr{Ptr{UInt8}}#[3]    #= Units for variable, e.g, 'mm/ms' =#
  ndims::Cint       #= Number of computational dimensions =#
  nspace::Cint      #= Number of physical dimensions =#
  nnodes::Cint      #= Total number of nodes =#
  dims::Ptr{Cint}#[3]     #= Number of nodes per dimension =#
  origin::Cint      #= '0' or '1' =#
  min_index::Ptr{Cint}#[3]   #= Index in each dimension of 1st
  #                                     * non-phoney =#
  max_index::Ptr{Cint}#[3]   #= Index in each dimension of last
  #                                     * non-phoney =#
  base_index::Ptr{Cint}#[3]  #= Lowest real i,j,k value for this block =#
  start_index::Ptr{Cint}#[3] #= i,j,k values corresponding to original
  #                                     * mesh =#
  size_index::Ptr{Cint}#[3]  #= Number of nodes per dimension for
  #                                     * original mesh =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  mrgtree_name::Ptr{UInt8} #= optional name of assoc. mrgtree object =#
end #type
typealias DBquadmesh DBquadmesh_


type DBucdmesh_
  #=----------- Unstructured Cell Data (UCD) Mesh -----------=#
  id::Cint          #= Identifier for this object =#
  block_no::Cint    #= Block number for this mesh =#
  group_no::Cint    #= Block group number for this mesh =#
  name::Ptr{UInt8}        #= Name associated with mesh =#
  cycle::Cint       #= Problem cycle number =#
  coord_sys::Cint   #= Coordinate system =#
  topo_dim::Cint    #= Topological dimension. =#
  units::Ptr{Ptr{UInt8}}#[3]    #= Units for variable, e.g, 'mm/ms' =#
  labels::Ptr{Ptr{UInt8}}#[3]   #= Label associated with each dimension =#
  coords::Ptr{Ptr{DB_DTPTR}}#[3]   #= Mesh node coordinates =#
  datatype::Cint    #= Type of coordinate arrays (double,float) =#
  time::Cfloat        #= Problem time =#
  dtime::Cdouble       #= Problem time, double data type =#
  #=
    * The following two fields really only contain 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetUcdmesh() which
    * can cause three doubles to be stored there instead of three floats.
    =#
  min_extents::Ptr{Cfloat}#[6]  #= Min mesh extents [ndims] =#
  max_extents::Ptr{Cfloat}#[6]  #= Max mesh extents [ndims] =#
  ndims::Cint       #= Number of computational dimensions =#
  nnodes::Cint      #= Total number of nodes =#
  origin::Cint      #= '0' or '1' =#
  faces::Ptr{DBfacelist}       #= Data structure describing mesh faces =#
  zones::Ptr{DBzonelist}       #= Data structure describing mesh zones =#
  edges::Ptr{DBedgelist}       #= Data struct describing mesh edges
                                 * (option) =#

  #=--------- Optional node attributes ---------=#
  gnodeno::Ptr{Void}     #= [nnodes] global node number of each node =#

  #=--------- Optional zone attributes ---------=#
  nodeno::Ptr{Cint}      #= [nnodes] node number of each node =#

  #=--------- Optional polyhedral zonelist ---------=#
  phzones::Ptr{DBphzonelist}     #= Data structure describing mesh zones =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  mrgtree_name::Ptr{UInt8} #= optional name of assoc. mrgtree object =#
  tv_connectivity::Cint
  disjoint_mode::Cint
  gnznodtype::Cint  #= datatype for global node/zone ids =#
end #type
typealias DBucdmesh DBucdmesh_


#=----------------------------------------------------------------------------
 * Database Mesh-Variable Object
 *---------------------------------------------------------------------------
 =#
type DBquadvar_
  #=----------- Quad Variable -----------=#
  id::Cint          #= Identifier for this object =#
  name::Ptr{UInt8}        #= Name of variable =#
  units::Ptr{UInt8}       #= Units for variable, e.g, 'mm/ms' =#
  label::Ptr{UInt8}       #= Label (perhaps for editing purposes) =#
  cycle::Cint       #= Problem cycle number =#
  meshid::Cint      #= Identifier for associated mesh (Deprecated Sep2005) =#
  vals::Ptr{Ptr{DB_DTPTR}}        #= Array of pointers to data arrays =#
  datatype::Cint    #= Type of data pointed to by 'val' =#
  nels::Cint        #= Number of elements in each array =#
  nvals::Cint       #= Number of arrays pointed to by 'vals' =#
  ndims::Cint       #= Rank of variable =#
  dims::Ptr{Cint}#[3]     #= Number of elements in each dimension =#
  major_order::Cint #= 1 indicates row-major for multi-d arrays =#
  stride::Ptr{Cint}#[3]   #= Offsets to adjacent elements  =#
  min_index::Ptr{Cint}#[3]  #= Index in each dimension of 1st
  #                                    * non-phoney =#
  max_index::Ptr{Cint}#[3]  #= Index in each dimension of last
  #                                    * non-phoney =#
  origin::Cint      #= '0' or '1' =#
  time::Cfloat        #= Problem time =#
  dtime::Cdouble       #= Problem time, double data type =#
  #=
    * The following field really only contains 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetQuadvar() which
    * can cause three doubles to be stored there instead of three floats.
    =#
  align::Ptr{Cfloat}#[6]    #= Centering and alignment per dimension =#
  mixvals::Ptr{Ptr{DB_DTPTR}}     #= nvals ptrs to data arrays for mixed zones =#
  mixlen::Cint      #= Num of elmts in each mixed zone data
                                 * array =#
  use_specmf::Cint  #= Flag indicating whether to apply species
                                 * mass fractions to the variable. =#
  ascii_labels::Cint#= Treat variable values as ASCII values
                                   by rounding to the nearest integer in
                                   the range [0, 255] =#
  meshname::Ptr{UInt8}    #= Name of associated mesh =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  region_pnames::Ptr{Ptr{UInt8}}
  conserved::Cint   #= indicates if the variable should be conserved
                                   under various operations such as interp. =#
  extensive::Cint   #= indicates if the variable reprsents an extensiv
                                   physical property (as opposed to intensive) =#
  centering::Cint   #= explicit centering knowledge should agree
                                   with alignment. =#
end #type
typealias DBquadvar DBquadvar_


type DBucdvar_
  #=----------- Unstructured Cell Data (UCD) Variable -----------=#
  id::Cint          #= Identifier for this object =#
  name::Ptr{UInt8}        #= Name of variable =#
  cycle::Cint       #= Problem cycle number =#
  units::Ptr{UInt8}       #= Units for variable, e.g, 'mm/ms' =#
  label::Ptr{UInt8}       #= Label (perhaps for editing purposes) =#
  time::Cfloat        #= Problem time =#
  dtime::Cdouble       #= Problem time, double data type =#
  meshid::Cint      #= Identifier for associated mesh (Deprecated Sep2005) =#
  vals::Ptr{Ptr{DB_DTPTR}}        #= Array of pointers to data arrays =#
  datatype::Cint    #= Type of data pointed to by 'vals' =#
  nels::Cint        #= Number of elements in each array =#
  nvals::Cint       #= Number of arrays pointed to by 'vals' =#
  ndims::Cint       #= Rank of variable =#
  origin::Cint      #= '0' or '1' =#
  centering::Cint   #= Centering within mesh (nodal or zonal) =#
  mixvals::Ptr{Ptr{DB_DTPTR}}     #= nvals ptrs to data arrays for mixed zones =#
  mixlen::Cint      #= Num of elmts in each mixed zone data
                                 * array =#
  use_specmf::Cint  #= Flag indicating whether to apply species
                                 * mass fractions to the variable. =#
  ascii_labels::Cint#= Treat variable values as ASCII values
                                   by rounding to the nearest integer in
                                   the range [0, 255] =#
  meshname::Ptr{UInt8}    #= Name of associated mesh =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  region_pnames::Ptr{Ptr{UInt8}}
  conserved::Cint   #= indicates if the variable should be conserved
                                   under various operations such as interp. =#
  extensive::Cint   #= indicates if the variable reprsents an extensiv
                                   physical property (as opposed to intensive) =#
end #type
typealias DBucdvar DBucdvar_


type DBmeshvar_
  #=----------- Generic Mesh-Data Variable -----------=#
  id::Cint          #= Identifier for this object =#
  name::Ptr{UInt8}        #= Name of variable =#
  units::Ptr{UInt8}       #= Units for variable, e.g, 'mm/ms' =#
  label::Ptr{UInt8}       #= Label (perhaps for editing purposes) =#
  cycle::Cint       #= Problem cycle number =#
  meshid::Cint      #= Identifier for associated mesh (Deprecated Sep2005) =#
  vals::Ptr{Ptr{DB_DTPTR}}        #= Array of pointers to data arrays =#
  datatype::Cint    #= Type of data pointed to by 'val' =#
  nels::Cint        #= Number of elements in each array =#
  nvals::Cint       #= Number of arrays pointed to by 'vals' =#
  nspace::Cint      #= Spatial rank of variable =#
  ndims::Cint       #= Rank of 'vals' array(s) (computatnl rank) =#
  origin::Cint      #= '0' or '1' =#
  centering::Cint   #= Centering within mesh (nodal,zonal,other) =#
  time::Cfloat        #= Problem time =#
  dtime::Cdouble       #= Problem time, double data type =#
  #=
    * The following field really only contains 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetPointvar() which
    * can cause three doubles to be stored there instead of three floats.
    =#
  align::Ptr{Cfloat}#[6]    #= Alignmnt per dimension if
  #                                  * centering==other =#

  #= Stuff for multi-dimensional arrays (ndims > 1) =#
  dims::Ptr{Cint}#[3]     #= Number of elements in each dimension =#
  major_order::Cint #= 1 indicates row-major for multi-d arrays =#
  stride::Ptr{Cint}#[3]   #= Offsets to adjacent elements  =#
  #=
    * The following two fields really only contain 3 elements.  However, silo
    * contains a bug in PJ_ReadVariable() as called by DBGetUcdmesh() which
    * can cause three doubles to be stored there instead of three floats.
    =#
  min_index::Ptr{Cint}#[6]  #= Index in each dimension of 1st
  #                                    * non-phoney =#
  max_index::Ptr{Cint}#[6]  #= Index in each dimension of last
  #                                     non-phoney =#
  ascii_labels::Cint#= Treat variable values as ASCII values
                                   by rounding to the nearest integer in
                                   the range [0, 255] =#
  meshname::Ptr{UInt8}      #= Name of associated mesh =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  region_pnames::Ptr{Ptr{UInt8}}
  conserved::Cint   #= indicates if the variable should be conserved
                                   under various operations such as interp. =#
  extensive::Cint   #= indicates if the variable reprsents an extensiv
                                   physical property (as opposed to intensive) =#
end #type
typealias DBmeshvar DBmeshvar_

# typedef DBmeshvar DBpointvar #= better named alias for pointvar =#
typealias DBpointvar DBmeshvar

type DBmaterial_
  #=----------- Material Information -----------=#
  id::Cint          #= Identifier =#
  name::Ptr{UInt8}        #= Name of this material information block =#
  ndims::Cint       #= Rank of 'matlist' variable =#
  origin::Cint      #= '0' or '1' =#
  dims::Ptr{Cint}#[3]     #= Number of elements in each dimension =#
  major_order::Cint #= 1 indicates row-major for multi-d arrays =#
  stride::Ptr{Cint}#[3]   #= Offsets to adjacent elements in matlist =#
  nmat::Cint        #= Number of materials =#
  matnos::Ptr{Cint}      #= Array [nmat] of valid material numbers =#
  matnames::Ptr{Ptr{UInt8}}
  matlist::Ptr{Cint}     #= Array[nzone] w/ mat. number or mix index =#
  mixlen::Cint      #= Length of mixed data arrays (mix_xxx) =#
  datatype::Cint    #= Type of volume-fractions (double,float) =#
  mix_vf::Ptr{DB_DTPTR}      #= Array [mixlen] of volume fractions =#
  mix_next::Ptr{Cint}    #= Array [mixlen] of mixed data indeces =#
  mix_mat::Ptr{Cint}     #= Array [mixlen] of material numbers =#
  mix_zone::Ptr{Cint}    #= Array [mixlen] of back pointers to mesh =#

  matcolors::Ptr{Ptr{UInt8}}
  meshname::Ptr{UInt8}    #= Name of associated mesh =#
  allowmat0::Cint   #= Flag to allow material "0" =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
end #type
typealias DBmaterial DBmaterial_


type DBmatspecies_
  #=----------- Species Information -----------=#
  id::Cint          #= Identifier =#
  name::Ptr{UInt8}        #= Name of this matspecies information block =#
  matname::Ptr{UInt8}     #= Name of material object with which the
#                                  * material species object is associated. =#
  nmat::Cint        #= Number of materials =#
  nmatspec::Ptr{Cint}    #= Array of lngth nmat of the num of material
#                                  * species associated with each material. =#
  ndims::Cint       #= Rank of 'speclist' variable =#
  dims::Ptr{Cint}#[3]     #= Number of elements in each dimension of the
  #                                  * 'speclist' variable. =#
  major_order::Cint #= 1 indicates row-major for multi-d arrays =#
  stride::Ptr{Cint}#[3]   #= Offsts to adjacent elmts in 'speclist'  =#
  nspecies_mf::Cint #= Total number of species mass fractions. =#
  species_mf::Ptr{DB_DTPTR}  #= Array of length nspecies_mf of mass
#                                  * fractions of the material species. =#
  speclist::Ptr{Cint}    #= Zone array of dimensions described by ndims
#                                  * and dims.  Each element of the array is an
#                                  * index into one of the species mass fraction
#                                  * arrays.  A positive value is the index in
#                                  * the species_mf array of the mass fractions
#                                  * of the clean zone's material species:
#                                  * species_mf[speclist[i]] is the mass fraction
#                                  * of the first species of material matlist[i]
#                                  * in zone i. A negative value means that the
#                                  * zone is a mixed zone and that the array
#                                  * mix_speclist contains the index to the
#                                  * species mas fractions: -speclist[i] is the
#                                  * index in the 'mix_speclist' array for zone
                                 * i. =#
  mixlen::Cint      #= Length of 'mix_speclist' array. =#
  mix_speclist::Ptr{Cint}  #= Array of lgth mixlen of 1-orig indices
#                                    * into the 'species_mf' array.
#                                    * species_mf[mix_speclist[j]] is the index
#                                    * in array species_mf' of the first of the
#                                    * mass fractions for material
                                   * mix_mat[j]. =#
  datatype::Cint    #= Datatype of mass fraction data. =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  specnames::Ptr{Ptr{UInt8}}
  speccolors::Ptr{Ptr{UInt8}}
end #type DBmatspecies
typealias DBmatspecies DBmatspecies_


type DBcsgzonelist_
  #=----------- CSG Zonelist -----------=#
  nregs::Cint       #= Number of regions in regionlist =#
  origin::Cint      #= '0' or '1' =#
  typeflags::Ptr{Cint}   #= [nregs] type info about each region =#
  leftids::Ptr{Cint}     #= [nregs] left operand region refs =#
  rightids::Ptr{Cint}    #= [nregs] right operand region refs =#
  xform::Ptr{Void}       #= [lxforms] transformation coefficients =#
  lxform::Cint      #= length of xforms array =#
  datatype::Cint    #= type of data in xforms array =#
  nzones::Cint      #= number of zones =#
  zonelist::Ptr{Cint}    #= [nzones] region ids (complete regions) =#
  min_index::Cint   #= Index of first real zone =#
  max_index::Cint   #= Index of last real zone =#

  #=--------- Optional zone attributes ---------=#
  regnames::Ptr{Ptr{UInt8}}
  zonenames::Ptr{Ptr{UInt8}}
end #type DBcsgzonelist
typealias DBcsgzonelist DBcsgzonelist_


type DBcsgmesh_
  #=----------- CSG Mesh -----------=#
  block_no::Cint    #= Block number for this mesh =#
  group_no::Cint    #= Block group number for this mesh =#
  name::Ptr{UInt8}        #= Name associated with mesh =#
  cycle::Cint       #= Problem cycle number =#
  units::Ptr{Ptr{UInt8}}#[3]    #= Units for variable, e.g, 'mm/ms' =#
  labels::Ptr{Ptr{UInt8}}#[3]   #= Label associated with each dimension =#
  nbounds::Cint     #= Total number of boundaries =#
  typeflags::Ptr{Cint}   #= nbounds boundary type info flags =#
  bndids::Ptr{Cint}      #= optional, nbounds explicit ids =#
  coeffs::Ptr{Void}      #= coefficients in the representation of
                                   each boundary =#
  lcoeffs::Cint     #= length of coeffs array =#
  coeffidx::Ptr{Cint}    #= array of nbounds offsets into coeffs
                                   for each boundary's coefficients =#
  datatype::Cint    #= data type of coeffs data =#
  time::Cfloat        #= Problem time =#
  dtime::Cdouble       #= Problem time, double data type =#
  min_extents::Ptr{Cdouble}#[3]  #= Min mesh extents [ndims] =#
  max_extents::Ptr{Cdouble}#[3]  #= Max mesh extents [ndims] =#
  ndims::Cint       #= Number of spatial & topological dimensions =#
  origin::Cint      #= '0' or '1' =#
  zones::Ptr{DBcsgzonelist}       #= Data structure describing mesh zones =#

  #=--------- Optional boundary attributes ---------=#
  bndnames::Ptr{Ptr{UInt8}}
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  mrgtree_name::Ptr{UInt8} #= optional name of assoc. mrgtree object =#
  tv_connectivity::Cint
  disjoint_mode::Cint
end #type DBcsgmesh
typealias DBcsgmesh DBcsgmesh_


type DBcsgvar_
  #=----------- CSG Variable -----------=#
  name::Ptr{UInt8}        #= Name of variable =#
  cycle::Cint       #= Problem cycle number =#
  units::Ptr{UInt8}       #= Units for variable, e.g, 'mm/ms' =#
  label::Ptr{UInt8}       #= Label (perhaps for editing purposes) =#
  time::Cfloat        #= Problem time =#
  dtime::Cdouble       #= Problem time, double data type =#
  vals::Ptr{Ptr{Void}}        #= Array of pointers to data arrays =#
  datatype::Cint    #= Type of data pointed to by 'vals' =#
  nels::Cint        #= Number of elements in each array =#
  nvals::Cint       #= Number of arrays pointed to by 'vals' =#
  centering::Cint   #= Centering within mesh (nodal or zonal) =#
  use_specmf::Cint  #= Flag indicating whether to apply species
                                 * mass fractions to the variable. =#
  ascii_labels::Cint#= Treat variable values as ASCII values
                                   by rounding to the nearest integer in
                                   the range [0, 255] =#
  meshname::Ptr{UInt8}    #= Name of associated mesh =#
  guihide::Cint     #= Flag to hide from post-processor's GUI =#
  region_pnames::Ptr{Ptr{UInt8}}
  conserved::Cint   #= indicates if the variable should be conserved
                                   under various operations such as interp. =#
  extensive::Cint   #= indicates if the variable reprsents an extensiv
                                   physical property (as opposed to intensive) =#
end #type DBcsgvar
typealias DBcsgvar DBcsgvar_


#=-------------------------------------------------------------------------
 * A compound array is an array whose elements are simple arrays. A simple
 * array is an array whose elements are all of the same primitive data
 * type: float, double, integer, long...  All of the simple arrays of
 * a compound array have elements of the same data type.
 *-------------------------------------------------------------------------
 =#

type DBcompoundarray_
  id::Cint          #=identifier of the compound array =#
  name::Ptr{UInt8}        #=name of te compound array  =#
  elemnames::Ptr{Ptr{UInt8}}
  elemlengths::Ptr{Cint} #=lengths of the simple arrays  =#
  nelems::Cint      #=number of simple arrays  =#
  values::Ptr{Void}      #=simple array values   =#
  nvalues::Cint     #=sum reduction of `elemlengths' vector =#
  datatype::Cint    #=simple array element data type =#
end #type DBcompoundarray
typealias DBcompoundarray DBcompoundarray_


type DBoptlist_
  options::Ptr{Cint}     #= Vector of option identifiers =#
  values::Ptr{Ptr{Void}}      #= Vector of pointers to option values =#
  numopts::Cint     #= Number of options defined =#
  maxopts::Cint     #= Total length of option/value arrays =#
end #type DBoptlist
typealias DBoptlist DBoptlist_


type DBobject_
  name::Ptr{UInt8}
  dtype::Ptr{UInt8}        #= Type of group/object. Note: Original field name is type =#
  comp_names::Ptr{Ptr{UInt8}}
  pdb_names::Ptr{Ptr{UInt8}}
  ncomponents::Cint #= Number of components =#
  maxcomponents::Cint  #= Max number of components =#
end #type DBobject_
typealias DBobject DBobject_

warn("In objects of type DBobject, internal field \"type\" is called \"dtype\" in Julia.")

type _DBmrgtnode
  name::Ptr{UInt8}
  narray::Cint
  names::Ptr{Ptr{UInt8}}
  type_info_bits::Cint
  max_children::Cint
  maps_name::Ptr{UInt8}
  nsegs::Cint
  seg_ids::Ptr{Cint}
  seg_lens::Ptr{Cint}
  seg_types::Ptr{Cint}
  num_children::Cint
  children::Ptr{Ptr{_DBmrgtnode}}

  #= internal stuff to support updates, i/o, etc. =#
  walk_order::Cint
  parent::Ptr{_DBmrgtnode}
end #type DBmrgtnode
typealias DBmrgtnode _DBmrgtnode


#=
typedef void (*DBmrgwalkcb)(DBmrgtnode *tnode, int nat_node_num, void *data)
=#

type _DBmrgtree
  name::Ptr{UInt8}
  src_mesh_name::Ptr{UInt8}
  src_mesh_type::Cint
  type_info_bits::Cint
  num_nodes::Cint
  root::Ptr{DBmrgtnode}
  cwr::Ptr{DBmrgtnode}

  mrgvar_onames::Ptr{Ptr{UInt8}}
  mrgvar_rnames::Ptr{Ptr{UInt8}}
end #type DBmrgtree
typealias DBmrgtree _DBmrgtree


type _DBmrgvar
  name::Ptr{UInt8}
  mrgt_name::Ptr{UInt8}
  ncomps::Cint
  compnames::Ptr{Ptr{UInt8}}
  nregns::Cint
  reg_pnames::Ptr{Ptr{UInt8}}
  datatype::Cint
  data::Ptr{Ptr{Void}}
end #type DBmrgvar
typealias DBmrgvar _DBmrgvar


type _DBgroupelmap
  name::Ptr{UInt8}
  num_segments::Cint
  groupel_types::Ptr{Cint}
  segment_lengths::Ptr{Cint}
  segment_ids::Ptr{Cint}
  segment_data::Ptr{Ptr{Cint}}
  segment_fracs::Ptr{Ptr{Void}}
  fracs_data_type::Cint
end #type DBgroupelmap
typealias DBgroupelmap _DBgroupelmap

const DB_MAX_EXPSTRS = 8 #= NO_FORTRAN_DEFINE =#

type _DBnamescheme
  fmt::Ptr{UInt8}              #= orig. format string =#
  #     char const **
  fmtptrs::Ptr{Ptr{UInt8}}
  #= ptrs into first (printf) part of fmt for each conversion spec. =#
  fmtlen::Cint             #= len of first part of fmt =#
  ncspecs::Cint            #= # of conversion specs in first part of fmt =#
  #     char
  delim::UInt8             #= delimiter char used for parts of fmt =#
  nembed::Cint             #= number of last embedded string encountered =#
  embedstrs::Ptr{Ptr{UInt8}}#[DB_MAX_EXPSTRS] #= ptrs to copies of embedded strings =#
  arralloc::Cint           #= flag indicating if Silo allocated the arrays or not =#
  narrefs::Cint            #= number of array refs in conversion specs =#
  arrnames::Ptr{Ptr{UInt8}}
  arrvals::Ptr{Ptr{Void}}         #= pointer to actual array data assoc. with each name =#
  arrsizes::Ptr{Cint}         #= size of each array (only needed for deallocating external arrays of strings) =#
  exprstrs::Ptr{Ptr{UInt8}}
end #type DBnamescheme
typealias DBnamescheme _DBnamescheme

#=
typedef struct DBfile *___DUMMY_TYPE  #= Satisfy ANSI scope rules =#
=#


#=
 * All file formats are now anonymous except for the public properties
 * and public methods.
 =#

type DBfile_pub

  #= Public Properties =#
  name::Ptr{UInt8}        #=name of file    =#
  dtype::Cint        #=file type.     =#
  #     DBtoc         *
  toc::Ptr{DBtoc}         #=table of contents   =#
  dirid::Cint       #=directory ID    =#
  fileid::Cint      #=unique file id [0,DB_NFILES-1] =#
  pathok::Cint      #=driver handles paths in names =#
  Grab::Cint        #=drive has access to low-level interface =#
  GrabId::Ptr{Void}      #=pointer to low-level driver descriptor =#
  file_lib_version::Ptr{UInt8} #= version of lib file was created with =#

  #     #= Public Methods =#
  #     int            (*close)(struct DBfile *)
  #     int            (*exist)(struct DBfile *, char const *)
  #     int            (*pause)(struct DBfile *)
  #     int            (*cont)(struct DBfile *)
  #     int            (*newtoc)(struct DBfile *)
  #     DBObjectType   (*inqvartype)(struct DBfile *, char const *)
  #     int            (*uninstall)(struct DBfile *)
  #     DBobject      *(*g_obj)(struct DBfile *, char const *)
  #     int            (*c_obj)(struct DBfile *, DBobject const *, int)
  #     int            (*w_obj)(struct DBfile *, DBobject const *, int)
  #     void          *(*g_comp)(struct DBfile *, char const *, char const *)
  #     int            (*g_comptyp)(struct DBfile *, char const *, char const *)
  #     int            (*w_comp)(struct DBfile *, DBobject *, char const *, char const *,
  #                              char const *, void const *, int, long const *)
  #     int            (*write) (struct DBfile *, char const *, void const *, int const *, int, int)
  #
  #
  #
  #
  #     int            (*writeslice)(struct DBfile *, char *, void *, int,
  #                                  int[], int[], int[], int[], int)
  #     void          *(*g_attr)(struct DBfile *, char *, char *)
  #     int            (*g_dir)(struct DBfile *, char *)
  #     int            (*mkdir)(struct DBfile *, char *)
  #     int            (*cd)(struct DBfile *, char *)
  #     int            (*cdid)(struct DBfile *, int)
  #     int            (*r_att)(struct DBfile *, char *, char *, void *)
  #     int            (*r_var)(struct DBfile *, char *, void *)
  #     int            (*r_var1)(struct DBfile *, char *, int, void *)
  #     int            (*module)(struct DBfile *, FILE *)
  #     int            (*r_varslice)(struct DBfile *, char *, int *, int *, int *,
  #                                  int, void *)
  #     int            (*g_compnames)(struct DBfile *, char *, char ***, char ***)
  #     DBcompoundarray *(*g_ca)(struct DBfile *, char *)
  #     DBcurve       *(*g_cu)(struct DBfile *, char *)
  #     DBdefvars     *(*g_defv)(struct DBfile *, char const *)
  #     DBmaterial    *(*g_ma)(struct DBfile *, char *)
  #     DBmatspecies  *(*g_ms)(struct DBfile *, char *)
  #     DBmultimesh   *(*g_mm)(struct DBfile *, char *)
  #     DBmultivar    *(*g_mv)(struct DBfile *, char *)
  #     DBmultimat    *(*g_mt)(struct DBfile *, char *)
  #     DBmultimatspecies *(*g_mms)(struct DBfile *, char *)
  #     DBpointmesh   *(*g_pm)(struct DBfile *, char *)
  #     DBmeshvar     *(*g_pv)(struct DBfile *, char *)
  #     DBquadmesh    *(*g_qm)(struct DBfile *, char *)
  #     DBquadvar     *(*g_qv)(struct DBfile *, char *)
  #     DBucdmesh     *(*g_um)(struct DBfile *, char *)
  #     DBucdvar      *(*g_uv)(struct DBfile *, char *)
  #     DBfacelist    *(*g_fl)(struct DBfile *, char *)
  #     DBzonelist    *(*g_zl)(struct DBfile *, char *)
  #     void          *(*g_var)(struct DBfile *, char *)
  #     int            (*g_varbl)(struct DBfile *, char *)  #=byte length =#
  #     int            (*g_varlen)(struct DBfile *, char *)  #=nelems =#
  #     int            (*g_vardims)(struct DBfile*, char*, int, int*) #=dims=#
  #     int            (*g_vartype)(struct DBfile *, char *)
  #     int            (*i_meshname)(struct DBfile *, char *, char *)
  #     int            (*i_meshtype)(struct DBfile *, char *)
  #     int            (*p_ca)(struct DBfile *, char *, char **, int *, int,
  #                            void *, int, int, DBoptlist *)
  #     int            (*p_cu)(struct DBfile *, char *, void *, void *, int, int,
  #                            DBoptlist *)
  #     int            (*p_defv)(struct DBfile *, char const *, int,
  #                            char **, int const *, char **,
  #                            DBoptlist **)
  #     int            (*p_fl)(struct DBfile *, char *, int, int, int *, int, int,
  #                            int *, int *, int *, int, int *, int *, int)
  #     int            (*p_ma)(struct DBfile *, char *, char *, int, int *, int *,
  #                            int *, int, int *, int *, int *, DB_DTPTR1, int, int,
  #                            DBoptlist *)
  #     int            (*p_ms)(struct DBfile *, char *, char *, int, int *, int *,
  #                            int *, int, int, DB_DTPTR1, int *, int, int,
  #                            DBoptlist *)
  #     int            (*p_mm)(struct DBfile *, char const*, int, char const *const *, int const *,
  #                            DBoptlist const *)
  #     int            (*p_mv)(struct DBfile *, char *, int, char **, int *,
  #                            DBoptlist *)
  #     int            (*p_mt)(struct DBfile *, char *, int, char **, DBoptlist *)
  #     int            (*p_mms)(struct DBfile *, char *, int, char **, DBoptlist *)
  #     int            (*p_pm)(struct DBfile *, char *, int, DB_DTPTR2, int, int,
  #                            DBoptlist *)
  #     int            (*p_pv)(struct DBfile *, char *, char *, int, DB_DTPTR2, int,
  #                            int, DBoptlist *)
  #     int            (*p_qm)(struct DBfile *, char *, char **, DB_DTPTR2, int *,
  #                            int, int, int, DBoptlist *)
  #     int            (*p_qv)(struct DBfile *, char *, char *, int, char **,
  #                            DB_DTPTR2, int *, int, DB_DTPTR2, int, int, int,
  #                            DBoptlist *)
  #     int            (*p_um)(struct DBfile *, char *, int, char **, DB_DTPTR2,
  #                            int, int, char *, char *, int, DBoptlist *)
  #     int            (*p_sm)(struct DBfile *, char *, char *,
  #                            int, char *, char *, DBoptlist *)
  #     int            (*p_uv)(struct DBfile *, char *, char *, int, char **,
  #                            DB_DTPTR2, int, DB_DTPTR2, int, int, int,
  #                            DBoptlist *)
  #     int            (*p_zl)(struct DBfile *, char *, int, int, int *, int, int,
  #                            int *, int *, int)
  #     int            (*p_zl2)(struct DBfile *, char *, int, int, int *, int, int,
  #                             int, int, int *, int *, int *, int, DBoptlist *)
  #     #= MCM-27Jul04: We added these to the end to avert potential
  #        link-time compatibility issues with older versions of the
  #        library. Some user's of Silo circumvent its version check
  #        which would ordinarily keep different versions from being
  #        mixed by defining an appropriate global symbol. =#
  #     DBphzonelist  *(*g_phzl)(struct DBfile *, char *)
  #     int            (*p_phzl)(struct DBfile *, char *,
  #                              int, int *, int, int *, char *,
  #                              int, int *, int, int *,
  #                              int, int, int,
  #                              DBoptlist *)
  #     int            (*p_csgzl)(struct DBfile *, char const *, int, int const *,
  #   const::Cint *, int const *, void const *, int, int,
  #                               int, int const *, DBoptlist *)
  #     DBcsgzonelist *(*g_csgzl)(struct DBfile *, char const *)
  #     int            (*p_csgm)(struct DBfile *, char const *, int, int,
  #   const::Cint *, int const *,
  #                              void const *, int, int, double const *,
  #                              char const *, DBoptlist *)
  #     DBcsgmesh     *(*g_csgm)(struct DBfile *, char const *)
  #     int            (*p_csgv)(struct DBfile *, char const *, char const *, int,
  #                              char **, void **, int, int, int,
  #                              DBoptlist *)
  #     DBcsgvar      *(*g_csgv)(struct DBfile *, char const *)
  #     DBmultimeshadj *(*g_mmadj)(struct DBfile *, char const *, int, int const *)
  #     int            (*p_mmadj)(struct DBfile *, char const *, int, int const *,
  #   const::Cint *, int const *, int const *, int const *,
  #   DB_CONSTARR2::Cint, int const *, int DB_CONSTARR2,
  #                               DBoptlist const *optlist)
  #     int            (*p_mrgt)(struct DBfile *dbfile, char const *name, char const *mesh_name,
  #                              DBmrgtree *tree, DBoptlist *opts)
  #     DBmrgtree     *(*g_mrgt)(struct DBfile *, char const *name)
  #     int            (*p_grplm)(struct DBfile *dbfile, char const *map_name,
  #   num_segments::Cint, int *groupel_types,
  #   segment_lengths::Ptr{Cint}, int *segment_ids,
  # segment_data::Ptr{Ptr{Cint}}, void **segment_fracs,
  #   fracs_data_type::Cint, DBoptlist *opts)
  #     DBgroupelmap  *(*g_grplm)(struct DBfile *dbfile, char const *name)
  #     int            (*p_mrgv)(struct DBfile *dbfile, char const *name,
  #                              char const *mrgt_name,
  #   ncomps::Cint, compnames::Ptr{Ptr{UInt8}}
  #   nregns::Cint, reg_pnames::Ptr{Ptr{UInt8}}
  #   datatype::Cint, void **data, DBoptlist *opts)
  #     DBmrgvar      *(*g_mrgv)(struct DBfile *dbfile, char const *name)
  #     int            (*free_z)(struct DBfile *, char const *)
  #     int            (*cpdir)(struct DBfile *, char const *,
  #                             struct DBfile *, char const *)
  #
  #     int          (*sort_obo)(struct DBfile *dbfile, int nobjs,
  #                              char const *const *obj_names, int *ranks)
end #type DBfile_pub
warn("In objects of type DBfile_pub, internal field \"type\" is called \"dtype\" in Julia.")


type DBfile
  pub::DBfile_pub
  #=private part follows per device driver =#
end #type DBfile


#=
typedef void (*DBErrFunc_t)(char*)
=#

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

const SILO_VSTRING_NAME = "_silolibinfo"

println("SILO library Constants and typedef's loaded.")
# const SILO_VSTRING = PACKAGE_VERSION
