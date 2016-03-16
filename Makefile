all:
	happy -gca ParAssign.y
	alex -g LexAssign.x
	ghc --make TestAssign.hs -o TestAssign

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

distclean: clean
	-rm -f DocAssign.* LexAssign.* ParAssign.* LayoutAssign.* SkelAssign.* PrintAssign.* TestAssign.* AbsAssign.* TestAssign ErrM.* SharedString.* ComposOp.* Assign3.dtd XMLAssign.* Makefile*
	

