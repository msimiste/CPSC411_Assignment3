import Parser
import ASTConverter

import System.Environment


import Language.LBNF.Compiletime
import Language.LBNF.Runtime

import Text.PrettyPrint.GenericPretty
import Text.PrettyPrint

main = do 
    args  <- getArgs
    conts <- readFile (args !! 0)
    let tokens = myLexer conts 
        pTree  = pE tokens
    case pTree of
       Ok tree -> do 
          let 
              ast   = transE tree 
              val   = interpretExpr ast  
          putStrLn $ show val 
       Bad str -> putStrLn str    

interpretExpr :: Expr -> Integer 
interpretExpr expr = case expr of
    Add e1 e2 -> (interpretExpr e1) + (interpretExpr e2)
    Mul e1 e2 -> (interpretExpr e1) * (interpretExpr e2)
    Num e     -> e 

zigStyle :: Style
zigStyle = Style {mode = PageMode, lineLength = 30, ribbonsPerLine = 1.5}
