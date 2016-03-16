happy -gca ParAssign.y
	alex -g LexAssign.x
	ghc --make TestAssign.hs -o TestAssign
    ghc --make Mainfile.hs -o Mainfile