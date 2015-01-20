#!/bin/bash
constfile1=gen/const_pre.jl

grep "#define\s*\x*" ../deps/usr/include/silo.h > "${constfile1}"

echo "Post-process the include/constant file ${constfile1} by hand now."
