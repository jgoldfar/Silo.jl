#!/bin/sh
constfile2=gen/const_hand.jl

grep -n "\\\n*" ../deps/usr/include/silo.h > "${constfile2}"

echo "The macros/multi-line defines are in ${constfile2}."
