module DNA
import pair 
import pairTest
import list 
data base = A | T | C | G

complement_base: base -> base 
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C 


Complement_Strand: list base -> list base
Complement_Strand nil = nil
Complement_Strand (h::t) = map complement_base (h::t) 
  

strand1: list (pair base base) -> list base
strand1 nil = nil 
strand1 (a::b) = map pair.fst (a::b) 

strand2: list (pair base base) -> list base
strand2 nil = nil 
strand2 (a::b) = map pair.snd (a::b) 

comp: base -> pair base base 
comp A = mkPair A T
comp T = mkPair T A
comp C = mkPair C G
comp G = mkPair G C

complete: list base -> list (pair base base) 
complete l = map comp l 

baseNat: base -> base -> Nat
baseNat A A = 1
baseNat T T = 1
baseNat C C = 1
baseNat G G = 1
baseNat _ _ = 0

countbase: list base -> base -> Nat 
countbase l x = list.foldr plus 0 (map (baseNat x) l) 













