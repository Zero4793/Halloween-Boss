
scoreboard players add halloween phase 1
execute at @e[sort=random,limit=13,tag=!hallow,tag=!boss] run summon lightning_bolt

effect clear @e[type=evoker,tag=boss] resistance
effect give @e[type=evoker,tag=boss] slow_falling 100000 0 true
effect give @e[type=evoker,tag=boss] health_boost 100000 13 true
effect give @e[type=evoker,tag=boss] instant_health 6 100 true
effect give @e[type=evoker,tag=boss] regeneration 100000 1 true
effect give @e[type=evoker,tag=boss] levitation 6 13 true

execute at @e[type=evoker,tag=boss] run effect give @a[distance=..120] darkness 13 0 true

#phantom steps
execute if score halloween phase matches 2 at @e[type=evoker,tag=boss] as @e[limit=3] run summon phantom ~ ~ ~ {Size:6,Tags:[hallow],Passengers:[{id:witch,Tags:[hallow]}]}
execute if score halloween phase matches 3 at @e[type=evoker,tag=boss] as @e[limit=3] run summon phantom ~ ~13 ~ {Size:6,Tags:[hallow],Passengers:[{id:blaze,Tags:[hallow]},{id:blaze,Tags:[hallow]},{id:blaze,Tags:[hallow]},{id:blaze,Tags:[hallow]},{id:blaze,Tags:[hallow]},{id:blaze,Tags:[hallow]}]}
