module listExample 
import list
import Person
import fashion 
infixr 7 ::
data listExample.list = nil' | (::) n listExample.list

lst:listExample.list 
lst = p1::p2::p3::nil' 

length':list' a -> Nat 
length' nil' = 0 
length' (n :: l') = S (length' l') 

(++): list' a -> list' a -> list' a
(++) nil' n = n 
(++)(n :: l) m = n :: (list.l ++ m) 

n1: list' fashion 
n1= ysl::burb::chan::cart::nil' 
