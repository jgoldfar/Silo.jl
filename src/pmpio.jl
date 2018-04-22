# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Silo/gen/../deps/usr/include/pmpio.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function PMPIO_Init(numFiles::Cint,ioMode::PMPIO_iomode_t,mpiComm::Cint,mpiTag::Cint,createCb::PMPIO_CreateFileCallBack,openCb::PMPIO_OpenFileCallBack,closeCb::PMPIO_CloseFileCallBack,userData)
    ccall((:PMPIO_Init,libsilo),Ptr{PMPIO_baton_t},(Cint,PMPIO_iomode_t,Cint,Cint,PMPIO_CreateFileCallBack,PMPIO_OpenFileCallBack,PMPIO_CloseFileCallBack,Ptr{Nothing}),numFiles,ioMode,mpiComm,mpiTag,createCb,openCb,closeCb,userData)
end

function PMPIO_Finish(bat)
    ccall((:PMPIO_Finish,libsilo),Nothing,(Ptr{PMPIO_baton_t},),bat)
end

function PMPIO_WaitForBaton(Bat,fname,nsname)
    ccall((:PMPIO_WaitForBaton,libsilo),Ptr{Nothing},(Ptr{PMPIO_baton_t},Cstring,Cstring),Bat,fname,nsname)
end

function PMPIO_HandOffBaton(Bat,file)
    ccall((:PMPIO_HandOffBaton,libsilo),Nothing,(Ptr{PMPIO_baton_t},Ptr{Nothing}),Bat,file)
end

function PMPIO_GroupRank(Bat,rankInComm::Cint)
    ccall((:PMPIO_GroupRank,libsilo),Cint,(Ptr{PMPIO_baton_t},Cint),Bat,rankInComm)
end

function PMPIO_RankInGroup(Bat,rankInComm::Cint)
    ccall((:PMPIO_RankInGroup,libsilo),Cint,(Ptr{PMPIO_baton_t},Cint),Bat,rankInComm)
end
