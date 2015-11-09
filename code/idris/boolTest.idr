module boolTest
import bool
import pair
import Serialize 


b1:bool
b1 = true
b2:bool
b2 = true

b3:bool
b3 = false

b4:bool
b4 = not true

b5:bool
b5 = not b1

b6:bool
b6 = not ( not b5 ) 

d:bool 
d = andp (mkPair true true)

d1:bool
d1 = andp (mkPair true false)

d2:bool
d2 = andp (mkPair false true)

d3:bool
d3 = andp (mkPair false false)

e1:bool
e1 = xorp(mkPair true false)

f1:bool
f1 = nandp(mkPair true false)

g1:bool
g1 = orp(mkPair true false)

h1: bool 
h1 = pand true true

h2: bool
h2 = pand true false 

h3:bool
h3 = pand false true 

h4:bool
h4 = pand false false 

i1:bool
i1 = por true true 

i2:bool
i2 = por true false 

i3:bool
i3 = por false true 

i4:bool
i4 = por false false 
 
j1:bool
j1 = pxor true true 

j2:bool
j2 = pxor true false

j3:bool
j3 = pxor false true 

j4:bool
j4 = pxor false false 

k1:bool
k1 = pnand true true 

k2:bool
k2 = pnand true false
 

k3:bool
k3 = pnand false true 



s:String 
s = toString true 




