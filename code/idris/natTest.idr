module natTest
import nat1 
import bool 
import pair 
import Serialize 
import nat 

z: nat
z = O 

o: nat
o = S O 

t: nat
t = S(S O) 

r:nat
r = S(S(S O))

n:nat
n = S r

g:nat 
g = S n


a:bool
a = evenb O

b:bool
b = (evenb (S O))

c:bool
c = evenb (S(S O))

d: bool
d = (evenb r)

e: bool
e = (evenb (S r))

f: bool
f = lep(mkPair z o) 

j: nat 
j = exp (mkPair O (S(S(S O)))) 

j1: nat 
j1 = exp (mkPair (S O) O)


q: bool 
q = eqp (mkPair z o)

q1: bool
q1 = eqp (mkPair O O)

q2: bool
q2 = eqp (mkPair (S O) O)

q3: bool
q3 = eqp (mkPair O (S O))

q4: bool 
q4 = eqp (mkPair (S O) (S(S(S O))))


p1:bool
p1 = gtp (mkPair O O)

p2:bool
p2 = gtp (mkPair (S O) (S(S(S O))))
 

s:String 
s = toString t 


