#!/bin/sh
sed -e "s/#define[ ]*\(\w*\)[ ]*\(\w*\)/const \1 = \2/g" -e "s/\/\*/#=/" -e "s/\*\//=#/" < gen/const_pre.jl > gen/const_pre_2.jl
