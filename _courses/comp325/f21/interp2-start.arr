### YOUR NAME HERE

import s-exp as S
import lists as L

## ************** CORE DATA TYPES ********************

## A Library is a collection of Function Definitions 
## We can use "type" to alias another type.. list in this case
## it's also nice to alias constructors like empty to better
## match funciton names to an aliased type
type LibExt = List<FunDefExt>
mt-libExt = empty ## use empty in a cases expr., not mt-libExt

type LibC = List<FunDefC>
mt-libC = empty ## use empty in a cases expr., not mt-libC

## A "Program" Type
## Program is compirsed of a library of functions (lib)
## and source code (src)
data Program:
  | progExt(lib :: LibExt , src :: ExprExt)
  | progC(lib :: LibC, src :: ExprC)      
end

## Function Definition Types (Extended and Core)
data FunDefExt:
    ## TODO:  Complete this definition by replacing the no-arg stub
  | fdExtstub
end
data FunDefC:
    ## TODO:  Complete this definition by replacing the no-arg stub
  | fdCstub
end

## Extended Language Expressions 
data ExprExt:
    ## TODO:  Complete this definition by replacing the no-arg stub
  | exprExtstub
end

## Core Language Expressions
data ExprC:
    ## TODO:  Complete this definition by replacing the no-arg stub
  | exprCstub
  | appC(name :: String, args :: List<ExprC>)
end

## The value type returned by interp. 
type Value = Boolean

## ************** PARSERS ********************

fun parse-prog(prog :: S.S-Exp) -> Program%(is-progExt):
  progExt(mt-libExt,exprExtstub) 
where:
  false is true  
end

## parse a single function definition (as an s-expression)
fun parse-def(adef :: S.S-Exp) -> FunDefExt:
  fdExtstub
where:
  true is false
end

## ************** DESUGARERS ****************

## Desugar a Function Definition
fun desugar-def(def :: FunDefExt) -> FunDefC:
  fdCstub
where:
  false is true
end

## Desugar an Extended Langauge Program to the Core Language
fun desugar-prog(prog :: Program%(is-progExt)) -> Program%(is-progC):
  progC(mt-libC,exprCstub)
where:
  true is false
end

## ************** INTERPRETERS **************

## Interpretation Environment Binding
data Binding:
    ## Eager is Names -> Values (Booleans here)
    ## Lazy would be Names -> Expressions
  | bind(name :: String, val :: Value)    
end

## List of Bindings is an Environment
##  This would be an AWESOME place for a map
type Environment = List<Binding>
mt-env = empty
xtnd-env = link

fun interp-prog(prog :: Program%(is-progC), env :: Environment) -> Value:
  false
where:
  true is false
end


### ****************** ALL-IN-ONE Functions ***********************

## Allows "main function" style programming. Programs are expected to be
## a list of definitions one of which is  a function named "main".
## main may take any number of arguments. run-main 
## accepts main's arguments "at the CLI" and runs main
## with those arguments
fun run-main(prog :: String, args :: List<Value>) -> Value:
  ## parse the "list of definitions"
  funs = S.read-s-exp(prog)
  cases (S.S-Exp) funs:
    | s-list(l) => 
      ## parse each def 
      defs = map(lam(d): desugar-def(parse-def(d));,l)
      ## run main with the given arguments
      interp-prog(progC(defs,appC("main",args)),mt-env)
    | else =>
      raise("Poorly formed program. Expected list of function definitions")
  end  
where:
  ## main is really just an echo or identity function
  run-main("((fun (main x) x))",[list: true]) is true  
  ## main runs ternary xor
  run-main("((fun (main x y z) (xor x y z)))",[list: true, false, true]) is false  
  run-main("((fun (main x y z) (xor x y z)))",[list: true, true, true]) is true
  run-main("((fun (main x y z) (xor x y z)))",[list: true, false, false]) is true
end

## all in one for programs where 
## the definitions are bundled in a list
## with the expression to be executed
fun run(prog :: String) -> Value:
  interp-prog(desugar-prog(parse-prog(S.read-s-exp(prog))),mt-env)
where:
  run("((fun (f) 1) (f))") is 1
  run("((fun (f x) (not x)) (f 0))") is 1
end
