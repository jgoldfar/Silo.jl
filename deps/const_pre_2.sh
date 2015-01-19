#!/bin/sh
sed -e "s/#define\s*\([A-Za-z0-9_]*\)\s*\([A-Za-z0-9_]*\)/const\t\1 = \2/ " -e "s/\/\*/#=/" -e "s/\*\//=#/" < gen/const_pre.jl > gen/const_pre_2.jl
