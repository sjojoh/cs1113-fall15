module list
import nat
import pair
import bool
import ite 
import eq
import Serialize
infixr 7 ::
data list a = nil | (::) a (list a) 

length: list a -> nat
length nil = O
length (h::t) = S (length t)


(++):list a -> list a -> list a 
(++) nil l2 = l2 
(++) (h::t) l2 = h ::(t++l2)

age: person -> Nat
age _ = 0


map:(a->b) -> list a -> list b 
map f nil = nil 
map f (h::t) = (f h)::(map f t) 

filter:(a -> bool) -> list a -> list a 
filter f nil = nil 
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                      (filter f t)

foldr:(a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t) 

member: (eq a) => a -> list a -> bool 
member v nil = false
member v (h::t) = ite  (eql v h) 
                   true
                   (member v t) 


listString: (eq (list a), Serialize a) => list a -> String
listString nil = "" 
listString  (h::t) = ite (eql t nil) 
                     (toString h) 
                     (toString h)++","++(listString t) 
                     
subset_elements:(eq a) => list a -> list a -> bool
subset_elements nil t = true
subset_elements (h::t) l = ite (member h l)
                           (subset_elements t l)
                           false                        
same_elements:(eq a) => list a -> list a -> bool
same_elements l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1) 


instance (eq a) => eq (list a) where 
  eql nil nil = true 
  eql (h::t) nil = false
  eql nil (h::t) = false 
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2) 

toStringList:(Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h) 
toStringList (h::t)  = (toString h) ++ "," ++ (toStringList t)  

instance (eq a, Serialize a) => Serialize (list a) where 
  toString l1 = "["++ (toStringList l1) ++ "]" 
