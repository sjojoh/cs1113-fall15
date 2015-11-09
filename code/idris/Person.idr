module person 
import bool 
import list
||| A person is someone who is or is not kind, who has a name and age.

data person = mkPerson bool String Nat 
data age = Nat 
p1:person 
p1 = mkPerson true "Ben" 23 

p2:person
p2 = mkPerson false "Ali" 10 

p3:person
p3 = mkPerson true "Dan" 21 


getKind:person -> bool   
getKind (mkPerson k n a) = k

getName: person -> String 
getName (mkPerson k n a) = n

getAge: person -> Nat
getAge (mkPerson k n a) = a 

mapAge: list person -> list Nat
mapAge nil = nil 
mapAge (h::t) = (age h)::(list.mapAge t) 






