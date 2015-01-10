testfiles = refined.tar.gz test1.tar.gz
comparetest = test1.tar.gz

all: testfiles clean

testfiles: unpack-refined unpack-test1

unpack-refined:
	tar xvzf refined.tar.gz
	mkdir -p ./refined
	mv ./udrive/faculty/jgoldfar/reu-proj/npde/codes/WENO/upw1/output/*.silo ./refined
	rm -r udrive/faculty/jgoldfar/reu-proj/npde/codes/WENO/upw1/

unpack-test1:
	tar xvzf test1.tar.gz
	mkdir -p ./t1/silo
	mkdir -p ./t1/cmp
	mv udrive/faculty/jgoldfar/reu-proj/npde/codes/WENO/upw2/output/*.silo ./t1/silo
	mv udrive/faculty/jgoldfar/reu-proj/npde/codes/WENO/upw2/output/*.tsv ./t1/cmp
	-rm -r udrive/faculty/jgoldfar/reu-proj/npde/codes/WENO/upw2/
	-rm -r verify1
	-rm test.std
	
clean:
	-rm -r udrive/
	
clean-all: clean
	-rm -r refined/
	-rm -r t1
	