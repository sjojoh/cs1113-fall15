module gunrow
import list

data country = Argentina | Australia | Austria | Honduras | USA
data list gunrow  = nil | (::) gunrow (list.list' gunrow)
||| A record of this type represents a country and the death rate per 10,000 ||| by gun for homocides, suicides, unintentional, either
data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s


countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u


austra:gunrow
austra = mkGunrow Australia 11 62 5 8


austri:gunrow
austri = mkGunrow Austria 18 268 1 8

hondu:gunrow
hondu = mkGunrow Honduras 6480 Z Z Z

us:gunrow
us = mkGunrow USA 355 670 16 9

lst: list.list' gunrow
lst = (::) argen ((::) austra ((::) austri ((::) hondu ((::) us nil'))))
