module foo
import nat1
import nat
import list 

fancyplus: list nat -> nat
fancyplus nil = O 
fancyplus (h::t) = add h (fancyplus t) 


fancymult: list nat -> nat 
fancymult nil = (S O)
fancymult (h::t) = mult h (fancymult t)

---binary operator (CHECK)
---identity element (
---type of list element 

fancy: (a -> a -> a)-> a -> (list a) -> a
fancy f id nil = id 
fancy f id (h::t) = f (h) (fancy f id t) 
