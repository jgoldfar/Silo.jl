# globlib.jl: Error Handling and Other Global Library Behavior

Version() = bytestring(ccall((:DBVersion, Silo.libsilo), Ptr{Uint8}, ()))
const _VERSION = convert(VersionNumber, Version())
VersionGE(Maj::Int, Mini::Int, Pat::Int) = ccall((:DBVersionGE, Silo.libsilo), Int32, (Int32, Int32, Int32), Maj, Mini, Pat)
