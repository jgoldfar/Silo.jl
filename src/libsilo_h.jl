# Higher-level helpers for libsilo_h functions
const DBCreate = DBCreateReal

_VERSION_STRING() = unsafe_string(DBVersion())

function _VERSION()
    _VERSION_Maj = Ref{Cint}(0)
    _VERSION_Min = Ref{Cint}(0)
    _VERSION_Pat = Ref{Cint}(0)
    _VERSION_Pre = Ref{Cint}(0)
    DBVersionDigits(_VERSION_Maj, _VERSION_Min, _VERSION_Pat, _VERSION_Pre)
    VersionNumber(getindex(_VERSION_Maj), getindex(_VERSION_Min), getindex(_VERSION_Pat))
end

"""
Checks whether passed `file_path` points to valid silo file.
"""
is_silofile(file_path::String) = (DBInqFileReal(file_path)>0)
