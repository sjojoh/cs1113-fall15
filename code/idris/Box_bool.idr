module Box

import bool
import unit

data Box = mkBox bool

b1: Box
b1 = (mkBox true) 

b2: Box
b2 = (mkBox false) 

unbox: Box -> bool
unbox (mkBox b) = b

and: bool -> bool -> bool
and true true = true 
and _ _ = false

uf: bool -> bool 
uf = (and true)

