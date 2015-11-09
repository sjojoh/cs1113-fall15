module fashion 
import list 
import bool 
data brand = Chanel | YSL | Burberry | Cartier 
data name = Coco | Yves | Thomas | Louis 
data hq = Paris | London   
data fashion = mkFashion brand Nat name hq

Year: fashion -> Nat 
Year (mkFashion a b c d) = b 

checkP: fashion-> bool 
checkP (mkFashion a b c Paris) = true 
checkP _ = false 

chan: fashion 
chan = mkFashion Chanel 1909 Coco Paris 

 
brandname: fashion -> brand
brandname (mkFashion b n na hq) = b 

fyear: fashion -> Nat 
fyear (mkFashion b n na hq) = n 

fname: fashion -> name 
fname (mkFashion b n na hq) = na 

headq: fashion -> hq
headq (mkFashion b n na hq) = hq 

ysl: fashion 
ysl = mkFashion YSL 1961 Yves Paris 


burb: fashion
burb = mkFashion Burberry 1856 Thomas London 

cart: fashion
cart = mkFashion Cartier 1847 Louis Paris 

listF: list fashion
listF = chan::ysl::burb::cart::nil
