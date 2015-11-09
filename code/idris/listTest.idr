module listTest
import nat
import pair
import list 
import ite

infixr 7 ::
data list a = nil | (::) a (list a) 



lO:list nat
lO = nil

l1:list nat
l1 = O :: nil

l2:list nat
l2 = ((S O)::( (S(S O)):: nil

length: list a -> nat
length nil = O
length (h::t) = S (length t)


(++):list a -> list a -> list a 
(++) nil' l2 = l2 
(++) (h::t) l2 = h ::(t++l2) 


l4:nat 
l4 = length nil {a = nat} 

l5:list bool
l5 = map evenb nil 

l6:list nat
l6 = map S (S(S(S(S O))))::(S(S(S O)))::(S(S O))::nil 

|||map test 

mapTest: list bool
mapTest = evenb S(S(S(S O)))::S(S(S O))::nil 
 
filterTest:list nat
filterTest = evenb S(S(S(S O)))::S(S(S O))::S(S O)::nil 

isThree:bool
isThree = (member (S(S(S O))) L2) 
