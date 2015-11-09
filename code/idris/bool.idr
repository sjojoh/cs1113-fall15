module bool
import Serialize 
data bool = true | false


not:bool -> bool 
not true = false
not false = true 

and: bool -> bool -> bool
and true true = true 
and _ _ = false 


xorp: bool -> bool -> bool
xorp false false = false
xorp true ture = false
xorp _ _ = true 



andp: bool -> bool -> bool
andp a b = not (and a b) 


---4 


or: bool -> bool -> bool
or false false = false
or _ _ = true 


eql_bool:bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false 


instance Serialize bool where
  toString true = "True"
  toString false = "False" 
