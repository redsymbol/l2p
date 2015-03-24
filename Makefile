DESTDIR=$(HOME)/bin

latest:
	./mklatest
clean:
	rm -rf dist* doc
	rm -f eqn.png 
	cd vistest; make clean
doc:
	pod2html --infile=l2p --outfile=doc/l2p.html
	pod2txt l2p doc/l2p.txt
test:
	cd vistest; make
install:
	install -m 0755 l2p $(DESTDIR)

