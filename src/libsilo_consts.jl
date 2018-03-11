const DB_NETCDF = 0
const DB_PDB = 2 # PDB Lite
const DB_TAURUS = 3
const DB_UNKNOWN = 5
const DB_DEBUG = 6
const DB_HDF5X = 7
const DB_PDBP = 1 # PDB Proper
const DB_HDF5_SEC2_OBSOLETE = 0x100
const DB_HDF5_STDIO_OBSOLETE = 0x200
const DB_HDF5_CORE_OBSOLETE = 0x300
const DB_HDF5_MPIO_OBSOLETE = 0x400
const DB_HDF5_MPIOP_OBSOLETE = 0x500
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
const DB_H5VFD_FIC = 11 # File Image in Core
const DB_NFILES = 256 #Max simultaneously open files
const DB_NFILTERS = 32 #Number of filters defined
const DBAll = 0xffffffffffffffff
const DBNone = 0x0000000000000000
const DBCalc = 0x0000000000000001
const DBMatMatnos = 0x0000000000000002
const DBMatMatlist = 0x0000000000000004
const DBMatMixList = 0x0000000000000008
const DBCurveArrays = 0x0000000000000010
const DBPMCoords = 0x0000000000000020
const DBPVData = 0x0000000000000040
const DBQMCoords = 0x0000000000000080
const DBQVData = 0x0000000000000100
const DBUMCoords = 0x0000000000000200
const DBUMFacelist = 0x0000000000000400
const DBUMZonelist = 0x0000000000000800
const DBUVData = 0x0000000000001000
const DBFacelistInfo = 0x0000000000002000
const DBZonelistInfo = 0x0000000000004000
const DBMatMatnames = 0x0000000000008000
const DBUMGlobNodeNo = 0x0000000000010000
const DBZonelistGlobZoneNo = 0x0000000000020000
const DBMatMatcolors = 0x0000000000040000
const DBCSGMBoundaryInfo = 0x0000000000080000
const DBCSGMZonelist = 0x0000000000100000
const DBCSGMBoundaryNames = 0x0000000000200000
const DBCSGVData = 0x0000000000400000
const DBCSGZonelistZoneNames = 0x0000000000800000
const DBCSGZonelistRegNames = 0x0000000001000000
const DBMMADJNodelists = 0x0000000002000000
const DBMMADJZonelists = 0x0000000004000000
const DBPMGlobNodeNo = 0x0000000008000000
const DBPMGhostNodeLabels = 0x0000000010000000
const DBQMGhostNodeLabels = 0x0000000020000000
const DBQMGhostZoneLabels = 0x0000000040000000
const DBUMGhostNodeLabels = 0x0000000080000000
const DBZonelistGhostZoneLabels = 0x0000000100000000
const DB_COLLINEAR = 130
const DB_NONCOLLINEAR = 131
const DB_CLOBBER = 0
const DB_NOCLOBBER = 1
const DB_READ = 1
const DB_APPEND = 2
const DB_LOCAL = 0
const DB_SUN3 = 10
const DB_SUN4 = 11
const DB_SGI = 12
const DB_RS6000 = 13
const DB_CRAY = 14
const DB_INTEL = 15
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
const DBOPT_BASEINDEX = 291 # quad meshes for node and zone
const DBOPT_ZONENUM = 292 # ucd meshes for zone
const DBOPT_NODENUM = 293 # ucd/point meshes for node
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
const DBOPT_TOPO_DIM = 312 # TOPOlogical DIMension
const DBOPT_REFERENCE = 313 # reference object
const DBOPT_GROUPINGS_SIZE = 314 # size of grouping array
const DBOPT_GROUPINGS = 315 # groupings array
const DBOPT_GROUPINGNAMES = 316 # array of size determined by
const DBOPT_ALLOWMAT0 = 317 # Turn off material numer "0" warnings
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
const DBOPT_MISSING_VALUE = 337
const DBOPT_ALT_ZONENUM_VARS = 338
const DBOPT_ALT_NODENUM_VARS = 339
const DBOPT_GHOST_NODE_LABELS = 340
const DBOPT_GHOST_ZONE_LABELS = 341
const DBOPT_LAST = 499
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
const DBOPT_H5_FIC_SIZE = 531
const DBOPT_H5_FIC_BUF = 532
const DBOPT_H5_LAST = 599
const DB_TOP = 0 #default--API traps
const DB_NONE = 1 #no errors trapped
const DB_ALL = 2 #all levels trap (traceback)
const DB_ABORT = 3 #abort() is called
const DB_SUSPEND = 4 #suspend error reporting temporarily
const DB_RESUME = 5 #resume normal error reporting
const DB_ALL_AND_DRVR = 6 #DB_ALL + driver error reporting
const E_NOERROR = 0 #No error
const E_BADFTYPE = 1 #Bad file type
const E_NOTIMP = 2 #Callback not implemented
const E_NOFILE = 3 #No data file specified
const E_INTERNAL = 5 #Internal error
const E_NOMEM = 6 #Not enough memory
const E_BADARGS = 7 #Bad argument to function
const E_CALLFAIL = 8 #Low-level function failure
const E_NOTFOUND = 9 #Object not found
const E_TAURSTATE = 10 #Taurus: database state error
const E_MSERVER = 11 #SDX: too many connections
const E_PROTO = 12 #SDX: protocol error
const E_NOTDIR = 13 #Not a directory
const E_MAXOPEN = 14 #Too many open files
const E_NOTFILTER = 15 #Filter(s) not found
const E_MAXFILTERS = 16 #Too many filters
const E_FEXIST = 17 #File already exists
const E_FILEISDIR = 18 #File is actually a directory
const E_FILENOREAD = 19 #File lacks read permission.
const E_SYSTEMERR = 20 #System level error occured.
const E_FILENOWRITE = 21 #File lacks write permission.
const E_INVALIDNAME = 22 # Variable name is invalid
const E_NOOVERWRITE = 23 #Overwrite not permitted
const E_CHECKSUM = 24 #Checksum failed
const E_COMPRESSION = 25 #Compression failed
const E_GRABBED = 26 #Low level driver enabled
const E_NOTREG = 27 #The dbfile pointer is not resitered.
const E_CONCURRENT = 28 #File is opened multiply and not all read-only.
const E_DRVRCANTOPEN = 29 #Driver cannot open the file.
const E_BADOPTCLASS = 30 #Optlist contains options for wrong class
const E_NOTENABLEDINBUILD = 31 #feature not enabled in this build
const E_MAXFILEOPTSETS = 32 #Too many file options sets
const E_NOHDF5 = 33 #HDF5 driver not available
const E_EMPTYOBJECT = 34 #Empty object not currently permitted
const E_OBJBUFF = 35 #No more temp. buffer space for object
const E_NERRORS = 50
const DB_ROWMAJOR = 0
const DB_COLMAJOR = 1
const DB_NOTCENT = 0
const DB_NODECENT = 110
const DB_ZONECENT = 111
const DB_FACECENT = 112
const DB_BNDCENT = 113 # for CSG meshes only
const DB_EDGECENT = 114
const DB_BLOCKCENT = 115 # for 'block-centered' data on multimeshs
const DB_CARTESIAN = 120
const DB_CYLINDRICAL = 121 # x,r; y,theta; z,height; 2D variant is eqiv. to poloar
const DB_SPHERICAL = 122 # x,r; y,theta; z,phi; 2D variant is equiv. to polar
const DB_NUMERICAL = 123
const DB_OTHER = 124
const DB_RECTILINEAR = 100
const DB_CURVILINEAR = 101
const DB_AREA = 140
const DB_VOLUME = 141
const DB_ON = 1000
const DB_ABUTTING = 142
const DB_FLOATING = 143
const DB_VARTYPE_SCALAR = 200
const DB_VARTYPE_VECTOR = 201
const DB_VARTYPE_TENSOR = 202
const DB_VARTYPE_SYMTENSOR = 203
const DB_VARTYPE_ARRAY = 204
const DB_VARTYPE_MATERIAL = 205
const DB_VARTYPE_SPECIES = 206
const DB_VARTYPE_LABEL = 207
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
const DBCSG_INNER = 0x7F000000
const DBCSG_OUTER = 0x7F010000
const DBCSG_ON = 0x7F020000
const DBCSG_UNION = 0x7F030000
const DBCSG_INTERSECT = 0x7F040000
const DBCSG_DIFF = 0x7F050000
const DBCSG_COMPLIMENT = 0x7F060000
const DBCSG_XFORM = 0x7F070000
const DBCSG_SWEEP = 0x7F080000
const DB_PREORDER = 0x00000001
const DB_POSTORDER = 0x00000002
const DB_FROMCWR = 0x00000004
const DB_ZONETYPE_BEAM = 10
const DB_ZONETYPE_POLYGON = 20
const DB_ZONETYPE_TRIANGLE = 23
const DB_ZONETYPE_QUAD = 24
const DB_ZONETYPE_POLYHEDRON = 30
const DB_ZONETYPE_TET = 34
const DB_ZONETYPE_PYRAMID = 35
const DB_ZONETYPE_PRISM = 36
const DB_ZONETYPE_HEX = 38
const DB_MAX_H5_OBJ_VALS = 64
const DB_MAX_EXPSTRS = 8 # NO_FORTRAN_DEFINE