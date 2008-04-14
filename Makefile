latest:
	./mklatest
clean:
	rm -rf dist* doc eqn.png
doc:
	pod2html --infile=l2p --outfile=doc/l2p.html
	pod2txt l2p doc/l2p.txt
test:
	cd vistest; make
