module AST where 

data Stmt = If Exp Stmt Stmt                        
                | While Exp Stmt 
                | Assign String Exp
                | Block [Stmt]
                | Write Exp
                | Input Exp
                deriving (Eq,Show)

data Exp = Add Exp Exp   
               | Mul Exp Exp
               | Div Exp Exp 
               | Neg Exp
               | Id String
               | Num Integer
                deriving (Eq,Show)