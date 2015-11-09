module option 
import bool 
import nat 

data option t = some t | none 

o1: option bool 
o1 = none 

o2: option bool
o2 = some true 

o3: option bool 
o3 = some false 

o4: option nat 
o4 = some (S O) 
