{-# LANGUAGE QuasiQuotes, TemplateHaskell #-}

module Parser  where

import Language.LBNF.Compiletime
import Language.LBNF(lbnf, dumpCode, bnfc)



bnfc [lbnf|

rules Prog ::= Stmt ;

rules Stmt ::= "if" Expr "then" Stmt "else" Stmt
            | "while" Expr "do" Stmt
            | "input" Expr   
            | Ident ":=" Expr
            | "write" Expr
            | "begin"  [Stmt]  "end" ;

terminator nonempty Stmt ";" ;

rules Expr ::= Expr Addop Term 
              | Term ; 

rules Addop ::= "+"
                | "-" ; 

rules Term ::= Term Mulop Factor 
              | Factor ; 

rules Mulop ::=  "*"
               | "/" ;

rules Factor ::= "(" Expr ")"
               | Ident
               | Integer
               | "-" Integer ;

|]
