module Box

import bool
import unit

data Box = mkBox unit
b1:Box
b1 = (mkBox mkUnit)

unbox: Box -> unit
unbox _ = mkUnit 


unbox (mkBox b) = b

