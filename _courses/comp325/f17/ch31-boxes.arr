## Mutation: Structures and Variables
import lists as L
import s-exp as S

## Addresses are conceptually very different from a "number"; we're
## just using numbers to represent memory addresses. So let's let
## type-checking catch some errors for us.
type Addr = Number

## Environment maintains identifier scope. It binds names to
## addresses. This effectively changes identifier semantics to
## implicit references.
data Binding:
  | bind(id :: String, loc :: Addr)
end
type Environment = List<Binding>
mt-env = empty
xtnd-env = link

## Store = abstracted memory. Binds addresses to values
data Storage:
  | cell(loc :: Addr, value :: Value)
end
type Store = List<Storage>
mt-sto = empty
xtnd-sto = link

data ExprC: # Mostly arithmetic
  | numC(n :: Number)
  | plusC(l :: ExprC, r :: ExprC)
  | multC(l :: ExprC, r :: ExprC)
    ## First-Class Functions
  | idC(id :: String)
  | fdC(arg :: ExprC%(is-idC), body :: ExprC)
  | letC(name :: ExprC%(is-idC), e :: ExprC, b :: ExprC)
  | appC(f :: ExprC , arg :: ExprC)
    ## Boxes
  | boxC(v :: ExprC)
  | unboxC(b :: ExprC)
  | setboxC(b :: ExprC, v :: ExprC)
    ## Sequences
    ## n-steps --> 2 steps
  | seqC(fst :: ExprC, snd :: ExprC)
end

data Value:
  | numV(n :: Number)
  | closV(f :: ExprC%(is-fdC), env :: Environment)
  | boxV(l :: Addr) # Stores a location, which should then be fetched...
end

## find value bound to id in env or raise free id error
## if that id is unbound
fun lookup(id :: String, env :: Environment) -> Addr:
  cases (List) env:
    | empty => raise("Unbound identifier: " + id)
    | link(f,r) =>
      if f.id == id:        
        f.loc
      else:
        lookup(id,r)
      end
  end
where:
  lookup("n",empty) raises "Unbound identifier: n"
  lookup("n",[list: bind("n",1)]) is 1
  lookup("x",[list: bind("n",1),bind("x",2)]) is 2
end  

## Get Value @ address loc from the Store sto
fun fetch(loc :: Addr, sto :: Store) -> Value:
  cases (List) sto:
    | empty => raise("Invalid address")
    | link(f,r) => 
      if f.loc == loc:
        f.value
      else:
        fetch(loc,r)
      end
  end
where:
  fetch(1,empty) raises "Invalid address"
  fetch(1,[list: cell(1,numV(2))]) is numV(2)
end

## adhoc constructor for the interpreter return values-> 
## the value of the interpreted expression and the 
## (potentially) modified store
fun ret(v :: Value, st :: Store):
  {v : v, st : st} 
where:
  ret(numV(0),empty).v is numV(0)
  ret(numV(0),empty).st is empty
  ret(numV(7),[list: cell(1,numV(5))]).v is numV(7)
  ret(numV(7),[list: cell(1,numV(5))]).st is [list: cell(1,numV(5))]
end

# Produces a closure that ticks through addresses [1,2,...)
# Note: wasteful without any garbage collection!
fun addr-ticker():
  var addr = 0
  lam():
    block:
      addr := addr + 1
      addr
    end
  end
where:
  ne-loc = addr-ticker()
  ne-loc() is 1
  ne-loc() is 2
  ne-loc() is 3
  other-loc = addr-ticker()
  other-loc() is 1
  other-loc() is 2
  other-loc() is 3
end
new-loc = addr-ticker()

## @TODO{Set return type...}
fun interp(expr :: ExprC, env :: Environment, sto :: Store):
  cases (ExprC) expr:
    | numC(n) => ret(numV(n), sto)
    | plusC(l,r) => 
      lhs = interp(l,env,sto)
      rhs = interp(r,env,lhs.st)
      ret(numV(lhs.v.n + rhs.v.n), rhs.st)
    | multC(l,r) =>
      lhs = interp(l,env,sto)
      rhs = interp(r,env,lhs.st)
      ret(numV(lhs.v.n * rhs.v.n), rhs.st)
    | idC(id) => ret(fetch(lookup(id,env), sto), sto)
    | appC(id,a) =>
      # @TODO{Check that this is really a closure...
      clos = fetch(lookup(id.id, env), sto)
      arg-val = interp(a, env, sto)
      # Seems wasteful right? This is call-by-value...
      loc = new-loc()
      interp(clos.f.body,
        xtnd-env(bind(clos.f.arg.id, loc), clos.env),
        xtnd-sto(cell(loc, arg-val.v), arg-val.st))
    | fdC(_,_) => ret(closV(expr,env),sto)
    | letC(n,e,b) =>
      arg-val = interp(e, env, sto)
      loc = new-loc()
      interp(b, 
        xtnd-env(bind(n.id, loc), env), 
        xtnd-sto(cell(loc, arg-val.v), arg-val.st))
    | boxC(v) =>
      val = interp(v, env, sto)
      loc = new-loc()
      ret(boxV(loc), xtnd-sto(cell(loc, val.v), val.st))
    | unboxC(b) =>
      val = interp(b, env, sto)
      ret(fetch(val.v.l, val.st), val.st)
    | seqC(b1, b2) =>
      lv = interp(b1, env, sto)
      interp(b2, env, lv.st)
    | setboxC(b, v) =>
      b-val = interp(b, env, sto)
      cases (Value) b-val.v:
        | boxV(loc) =>
          v-val = interp(v, env, b-val.st)
          ret(v-val.v, xtnd-sto(cell(loc, v-val.v), v-val.st))
        | else => raise("can't set non-box")
      end
  end
end
      
############### Parsing stuff ###############
## Necessary to make the interpreter work, but boring extensions of
## previous material.

data ExprExt:
  | numExt(n :: Number)
  | plusExt(l :: ExprExt, r :: ExprExt)
  | subExt(l :: ExprExt, r :: ExprExt)
  | multExt(l :: ExprExt, r :: ExprExt)
  | negExt(e :: ExprExt)
  | appExt(f :: ExprExt%(is-idExt), a :: ExprExt)
  | idExt(s :: String)
  | fdExt(arg :: ExprExt%(is-idExt), body :: ExprExt)
  | letExt(name :: ExprExt%(is-idExt), e :: ExprExt, b :: ExprExt)
  | boxExt(v :: ExprExt)
  | unboxExt(b :: ExprExt)
  | setboxExt(b :: ExprExt, v :: ExprExt)
  | seqExt(fst :: ExprExt, snd :: ExprExt)
end

fun desugar(s :: ExprExt) -> ExprC:
  cases (ExprExt) s:
    | numExt(n) => numC(n)
    | plusExt(l,r) => plusC(desugar(l), desugar(r))
    | subExt(l,r) => plusC(desugar(l), multC(numC(-1), desugar(r)))
    | multExt(l,r) => multC(desugar(l), desugar(r))
    | negExt(e) => multC(numC(-1),desugar(e))
    | idExt(i) => idC(i)
    | appExt(f,a) => appC(desugar(f),desugar(a))
    | fdExt(f,b) => fdC(desugar(f),desugar(b))
    | letExt(n,e,b) => letC(desugar(n),desugar(e),desugar(b))
    | boxExt(v) => boxC(desugar(v))
    | unboxExt(b) => unboxC(desugar(b))
    | setboxExt(b,v) => setboxC(desugar(b),desugar(v))
    | seqExt(b1,b2) => seqC(desugar(b1),desugar(b2))
  end
end

## Parser for simple Arithmetic Core Language
fun parse(s :: S.S-Exp) -> ExprExt:
  cases (S.S-Exp) s:
    | s-num(n) => numExt(n)
    | s-list(shadow s) => parse-list(s)
    | s-sym(shadow s) => idExt(s)
    | else => raise("parse: not number or list")
  end
end

fun parse-binary(op :: String) -> (ExprExt, ExprExt -> ExprExt):
  ask:
    | op == "+" then: {(l,r): plusExt(l,r)}
    | op == "*" then: {(l,r): multExt(l,r)}
    | op == "-" then: {(l,r): subExt(l,r)}    
    | op == "fun" then: {(a,b): fdExt(a,b)}
      # @TODO{Make this n-ary}
    | op == "begin" then: {(f,s): seqExt(f,s)}
    | op == "setbox" then: {(b,v): setboxExt(b,v)}
    | otherwise: {(lft,rht): raise("parse-binary: invalid operator " + op)}
  end
end

fun parse-ternary(op :: String) -> (ExprExt,ExprExt -> ExprExt):
  ask:
    | op == "let" then: {(l,c,r): letExt(l,c,r)}
    | otherwise: {(l,c,r): raise("parse-ternary: invalid operator " + op)}
  end
end

fun parse-unary(op :: String) -> (ExprExt -> ExprExt):
  ask:
    | op == "-" then: {(arg): negExt(arg)}
    | op == "box" then: {(arg): boxExt(arg)}
    | op == "unbox" then: {(arg): unboxExt(arg)}
    | otherwise: {(arg) : appExt(idExt(op), arg)}
  end
end

## parse-list is the helper for parse that parses the 
## list component of an s-list case
fun parse-list(l :: List<S.S-Exp>) -> ExprExt:
  cases (List) l:
    | empty => raise("parse: unexpected empty list")
    | link(op, args) =>
      len = args.length()
      ask:
        | len == 0 then: raise("parse: invalid operator " + op.s)
        | len == 1 then:  parse-unary(op.s)(parse(L.get(args,0)))
        | len == 2 then: parse-binary(op.s)(parse(L.get(args,0)), parse(L.get(args,1)))
        | len == 3 then: parse-ternary(op.s)(parse(L.get(args,0)),parse(L.get(args,1)),parse(L.get(args,2)))
        | otherwise: raise("parse: invalid operator " + op.s)
      end
  end
end

fun parse-string(s :: String) -> ExprExt:
  parse(S.read-s-exp(s))
end

fun full-parse(s :: String) -> ExprC:
  desugar(parse-string(s))
end

fun run(s :: String) -> Value:
  interp(full-parse(s),mt-env,mt-sto).v
end

prog = ```
       (let a (box 1)
         (let f (fun x (+ x (unbox a)))
           (begin
             (setbox a 2)
             (f 10))))
       ```