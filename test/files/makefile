testfiles = refined.tar.gz test1.tar.gz
comparetest = test1.tar.gz

all: testfiles clean

testfiles: unpack-refined unpack-test1

unpack-refined: refined.tar.gz
	tar xvzf refined.tar.gz
	mkdir -p ./refined
	mv ./udrive/faculty/jgoldfar/reu-proj/npde/codes/WENO/upw1/output/*.silo ./refined
	rm -r udrive/faculty/jgoldfar/reu-proj/npde/codes/WENO/upw1/

refined.tar.gz:
	wget https://bitbucket.org/jgoldfar/silo.jl/downloads/refined.tar.gz
	

unpack-test1: test1.tar.gz
	tar xvzf test1.tar.gz
	mkdir -p ./t1/silo
	mkdir -p ./t1/cmp
	mv udrive/faculty/jgoldfar/reu-proj/npde/codes/WENO/upw2/output/*.silo ./t1/silo
	mv udrive/faculty/jgoldfar/reu-proj/npde/codes/WENO/upw2/output/*.tsv ./t1/cmp
	-rm -r udrive/faculty/jgoldfar/reu-proj/npde/codes/WENO/upw2/
	-rm -r verify1
	-rm test.std

test1.tar.gz:
	wget https://bitbucket.org/jgoldfar/silo.jl/downloads/test1.tar.gz

clean:
	-rm -r udrive/
	
clean-all: clean
	-rm -r refined/
	-rm -r t1
	