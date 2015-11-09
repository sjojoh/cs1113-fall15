module wedparty 
data wedparty a b c = dresscolor a b c 

wedpartyDC: wedparty a b c -> a
wedpartyDC (dresscolor red pink white) = red 



