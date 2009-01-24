L2P = ../l2p

all_imgs:
	# -I option
	$(L2P) -o test_Ioption.png -I '\sqrt{\sum^{N}_{i=1}{x_i}}'
	# multi-line bug
	$(L2P) -o test_multilinebug.png -p pstricks k.tex
	# use included package
	$(L2P) -o test_includepackage.png -p amssymb -i "$$\mho$$"
	# Normal
	$(L2P) -o test_normal.png i.tex
	# Normal, std input
	cat i.tex | $(L2P) -o test_normal2.png 
	# 600 dpi
	$(L2P) -o test_600dpi.png -d 600 i.tex
	# blue fg, yellow bg
	$(L2P) -o test_bgfgcolor.png -f 0000aa -b ffff00 i.tex
	# blue fg, yellow bg
	$(L2P) -o test_bgfgcolora.png -f ffff00 -b 0000aa i.tex
	# blue fg, yellow bg (alt format)
	$(L2P) -o test_altbgfgcolor.png -f '0, 0, 1.0' -b '255 255 0' i.tex
	# blue fg, yellow bg (another alt format)
	$(L2P) -o test_alt2bgfgcolor.png -f '0; 0; 1.0' -b '255:255:0' i.tex
	# transparent
	$(L2P) -o test_transparent.png -T i.tex
	# transparent, white fg
	$(L2P) -o test_transparentinverted.png -T -f ffffff i.tex 
	# transparent, white fg, bg hint
	$(L2P) -o test_transparentinvertedbghint.png -T -b ff0000 -f ffffff i.tex 
	# transparent, bg hint
	$(L2P) -o test_transparentbghint.png -T -b ff0000 i.tex 
	# simple border
	$(L2P) -o test_simpleborder.png -B 20 i.tex
	# assymetric border
	$(L2P) -o test_assymetricborder.png -B 20x50 i.tex
	# border w/ a nondefault bg color
	$(L2P) -o test_borderwithbackground.png -b ffff00 -B 50 i.tex
	# border w/ a different bg color
	$(L2P) -o test_borderwithdiffbackground.png -b ffff00 -B '50 ff0000' i.tex
	# border w/ a different bg color, another format
	$(L2P) -o test_borderwithdiffbackgroundanother.png -b ffff00 -B '50 1.0 0.0 0.0' i.tex
	# border w/ transparency
	$(L2P) -o test_borderwithtransparency.png -T -B '50' i.tex
	# multiple items
	cat j.tex | $(L2P) -o test_multi.png

clean:
	rm -f *.png *.jpg *.gif