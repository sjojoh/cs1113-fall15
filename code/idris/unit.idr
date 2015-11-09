module unit
import bool
import Serialize 
import eq 
data unit = mkUnit 


Unit_id: unit -> unit
Unit_id mkUnit = mkUnit

eql_unit: unit -> unit -> bool 
eql_unit v1 v2 = true 

|||overloaded operators 
instance eq unit where 
  eql u1 u2 = eql_unit u1 u2 

instance Serialize unit where 
  toString u = "()" 

