{-# LANGUAGE QuasiQuotes, TemplateHaskell #-}

module Parser  where

import Language.LBNF.Compiletime
import Language.LBNF(lbnf, dumpCode, bnfc)



bnfc [lbnf|

PADD . E ::= E "+" T ;
E1   . E ::= T ;

PMul . T ::= T "*" F ;
T2   . T ::= F ;

PInt . F ::= Integer ;


|]
