module colors1 
import pair 
import bool 
 

data colors1 = red | green | blue | cyan | mangenta | yellow 

complement: colors1 -> colors1 
complement red = cyan 
complement green = mangenta 
complement blue = yellow 
complement yellow = blue 
complement cyan = red 
complement mangenta = green 

additive: colors1 -> bool 
additive red = true 
additive green = true 
additive blue = true 
additive _ = false




complements: pair colors1 colors1 -> bool 
complements (mkPair red cyan) = true 
complements (mkPair red _) = false 
complements (mkPair cyan red) = true 
complements (mkPair cyan _ ) = false 
complements (mkPair green mangenta) = true 
complements (mkPair green _ ) = false 
complements (mkPair mangenta green) = true 
complements (mkPair mangenta _ ) = false 
complements (mkPair blue yellow) = true 
complements (mkPair yellow _ ) = true 
complements (mkPair blue _ ) = false 
complements (mkPair yellow _ ) = false 
complements (mkPair cyan red) = true 
complements (mkPair red cyan) = true
complements (mkPair red _ ) = false 
complements (mkPair cyan _) = false 
 
mixink: pair colors1 colors1 -> colors1 
mixink (mkPair mangenta cyan) = blue 
mixink (mkPair cyan mangenta) = green 
mixink (mkPair mangenta yellow) = red
mixink (mkPair cyan mangenta) = blue 
mixink (mkPair yellow cyan) = green 
mixink (mkPair yellow mangenta) = red 
