module nat
import bool 
%default total 


data nat = O | S nat


|||returns true id the argument is (represents) zero, otherwise false 

isZero:nat -> bool

isZero O = true 
isZero(S _)= false

|||returns the successor of any given nat 
succ: nat -> nat 
succ n = S n 

succ O = S O 
succ (S n') = S (S n')




||| returns the predecessor of nay given nat 
pred: nat -> nat 
pred O = O 
pred (S n) = n 

||| return true if the argument is even otherwise false 
evenb: nat -> bool 
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n 

oddb: nat -> bool 
oddb n = not (evenb n)
