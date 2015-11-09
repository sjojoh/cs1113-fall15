module set 
import ite
import bool
import list
import eq
|||mkSet is meant to be private 

data set a = mkSet (list a) 

|||a starting for building any set 
new_set: set a 
new_set = mkSet nil 

set_insert:(eq a) =>  a -> set a -> set a
set_insert v (mkSet l) = ite (member v l) 
                         (mkSet l)
                         (mkSet (v::l)) 
                  
instance (eq a) => eq (set a) where 
  eql (mkSet a) (mkSet b) = same_elements a b 




