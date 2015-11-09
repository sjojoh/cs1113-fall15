module nat 

import bool
import eq 
import Serialize

data nat = O | S nat

isZero: nat -> bool 
isZero O = true 
isZero _ = false 


add: nat -> nat -> nat
add O m = m 
add (S n) m = S (add n m) 


mult:nat -> nat -> nat
mult O m = O 
mult (S n) m = add m (mult m n)
  
  
fact:nat -> nat 
fact O = S O 
fact (S n) = mult (S n) (fact n) 


sub: nat -> nat -> nat
sub O m = O 
sub n O = n 
sub (S n) (S m) = sub n m 
 

lepp: nat -> nat -> bool
lepp O (S O) = true
lepp (S O) O = true
lepp (S n) (S m) = lepp n m  


expp: nat -> nat -> nat
expp m O = S O 
expp m (S n) = mult m (expp m n)

eqpp: nat -> nat -> bool
eqpp (S O) O = true 
eqpp O (S O) = false
eqpp (S m) (S n) = eqpp m n 


gtpp: nat -> nat -> bool
gtpp O O = false
gtpp (S O) O = true
gtpp O (S O) = false
gtpp (S m) (S n) = gtpp m n 

gepp: nat -> nat -> bool
gepp O O = true
gepp (S O) O = true
gepp O (S O) = false
gepp (S m) (S n) = gepp m n 

Itp: nat -> nat -> bool 
Itp m n = not (gepp m n) 

eql_nat: nat -> nat -> bool
eql_nat O O = true 
eql_nat (S n) O = false
eql_nat O (S m) = false
eql_nat (S n) (S m) = eql_nat n m 

instance eq nat where 
  eql n1 n2 = eql_nat n1 n2 

instance Serialize nat where 
  toString O = "Z"
  toString (S n) = "s" ++ (toString n) 
