#!/bin/bash
constfile1=gen/const_pre.jl
constfile2=gen/const_hand.jl

grep "#define\s*\x*" ../deps/usr/include/silo.h > "${constfile1}"
grep "\\\n*" ../deps/usr/include/silo.h > "${constfile2}"

echo "Post-process the include/constant file ${constfile1} by hand now. The macros/multi-line defines are in ${constfile2}."
