#Crimson Tardis

scoreboard players set halloween phase 1
execute at @e[sort=random,limit=13,tag=!boss,tag=!hallow] run summon lightning_bolt

execute as @e[limit=3] run summon phantom ~ ~ ~ {Tags:[Hallow]}
summon phantom ~ ~ ~ {Size:6,Tags:[boss],Passengers:[{id:evoker,Tags:[boss]}]}

item replace entity @e[type=evoker,tag=boss] weapon.offhand with minecraft:totem_of_undying
item replace entity @e[type=evoker,tag=boss] armor.head with minecraft:jack_o_lantern

effect give @e[type=phantom,tag=boss] health_boost 100000 6 true
effect give @e[type=phantom,tag=boss] instant_damage 1 100 true
effect give @e[type=evoker,tag=boss] resistance 100000 100 true

execute at @e[type=evoker,tag=boss] run effect give @a[distance=..120] darkness 13 0 true

time set midnight

kill @s
