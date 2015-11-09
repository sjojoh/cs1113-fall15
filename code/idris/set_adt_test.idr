module setadtTest 

import set_adt_hw
import bool
import list
import set
import nat1  

t1: bool 
t1 = isEmpty (mkSet nil) 

t2: set
t2 = (S O) (mkSet ((S O)::nil))

t3: set
t3 = set_insert (S O) (mkSet (S O)::nil) 

t4:set
t4 = set_remove (S O) (mkSet (S O)::nil) 

t5:nat
t5 =set_cardinality (mkSet nil) 

t6:bool
t6 = set_member (S O) (mkSet nil) 

t7:set
t7 = set_union (mkSet nil) (mkSet (S O)::nil) 

t8:set
t8 = set_intersection (mkSet nil) (mkSet ((S O)::nil)) 

t9:set
t9 = set_difference (mkSet nil) (mkSet nil) 

t10= set
t10 = set_forall (evenb) (mkSet nil) 

t11: set 
t11 = set_exists (evenb) (mkSet nil) 
 
t12: set 
t12 = set_witness (oddb) (mkSet nil) 

t13: set
t13 = set_product (mkSet nil) (mkSet (S(S O))::(S O)::nil) 
