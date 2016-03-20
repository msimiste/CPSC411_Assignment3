all:
	cabal exec -- happy -gca ParAssign.y
	alex -g LexAssign.x
	ghc --make TestAssign.hs -o TestAssign
	ghc --make Mainfile.hs -o Mainfile

run:
	
	./Mainfile ./CockettsTests/exp.m+
	./Mainfile ./CockettsTests/exp.m+~
	./Mainfile ./CockettsTests/fac.m+
	./Mainfile ./CockettsTests/fib.m+
	./Mainfile ./CockettsTests/gcd.m+
	./Mainfile ./CockettsTests/gcm.m+
	./Mainfile ./CockettsTests/stats.m+
	./Mainfile ./CockettsTests/test1.m+
	./Mainfile ./CockettsTests/test2.m+
	./Mainfile ./CockettsTests/test3.m+
	./Mainfile ./CockettsTests/test4.m+
	./Mainfile ./CockettsTests/test5.m+
	./Mainfile ./CockettsTests/test6.m+

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

distclean: clean
	-rm -f DocAssign.* LexAssign.* ParAssign.* LayoutAssign.* SkelAssign.* PrintAssign.* TestAssign.* AbsAssign.* TestAssign ErrM.* SharedString.* ComposOp.* Assign3.dtd XMLAssign.* Makefile*
	

