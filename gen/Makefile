missing_defs.jl: ../deps/usr/include/silo.h
	cat $< | grep -E '#define\s+\S+\s+\d+' | sed -e 's/\#define/const /'  \
	-e 's/\/\*/\#/' -e 's/\*\///' -e 's/ULL//' | sed -E -e 's/ ([[:digit:]])/ = \1/' \
	| sed -E -e 's/[\ ]+/ /g' > $@
