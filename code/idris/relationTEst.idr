module relationTest 
import relation 
import list 
import bool 
import pair 
import fashion 

years':Nat 
years' = query listF checkP Year plus 0

listbd: fashion -> list brand 
listbd b = (brandname b)::nil 

names: list brand 
names = query listF checkP listbd  list.(++) nil 

CountOne: a -> Nat
CountOne v = 1

number: Nat 
number = query listF checkP CountOne plus 0 

count_rel: (list tuple) -> (tuple -> bool) -> Nat
count_rel listF checkP = query listF checkP CountOne plus 0 

sum_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> Nat
sum_rel listF checkP fname = query listF checkP fname plus 0 

aveYear: pair Nat Nat 
aveYear = mkPair (query listF checkP Year plus 0) (query listF checkP CountOne plus 0) 

ave_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat)-> pair Nat Nat 
ave_rel listF checkP fname = mkPair (sum_rel listF checkP fname) (count_rel listF checkP) 




