# globlib.jl: Error Handling and Other Global Library Behavior

Version() = bytestring(ccall((:DBVersion, libsilo), Ptr{Uint8}, ()))
const _VERSION = convert(VersionNumber, Version())
VersionGE(Maj::Int, Mini::Int, Pat::Int) = ccall((:DBVersionGE, libsilo), Int32, (Int32, Int32, Int32), Maj, Mini, Pat)
Errfuncname() = bytestring(ccall((:DBErrfuncname, libsilo), Ptr{Uint8}, (Void,)))
Errno() = ccall((:DBErrfuncname, libsilo), Int32, (Void,))
ErrString() = bytestring(ccall((:DBErrString, libsilo), Void{Uint8}, (Void,)))
ShowErrors(level::Int, func::Function) = ccall((:DBShowErrors, libsilo), Void, (Int32, Ptr{Void}), level, func)
