module relation 
import list
import bool 

query: (list tuple) -> (tuple -> bool) -> (tuple -> value) -> (value -> value -> value) -> value -> value
query relation select project reduce id = list.foldr reduce id (map project (filter select relation)) 


