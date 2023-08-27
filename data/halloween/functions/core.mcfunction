#Crimson Tardis

#set pumpkins and other features around
#actually check evoker killed and not just despanwed

#phases
execute if score halloween phase matches 0 as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]}] at @s if score @s sacrifice matches 1.. store result score @s savanna run locate biome savanna
execute if score halloween phase matches 0 as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]}] at @s if score @s sacrifice matches 1.. if score @s savanna matches ..3 at @e[type=experience_orb,limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {Tags:[hallow],Invisible:1}
scoreboard players set @a sacrifice 0

execute if score halloween phase matches 1 run function halloween:phase_1
execute if score halloween phase matches 2 run function halloween:phase_2
execute if score halloween phase matches 3 run function halloween:phase_3
execute if score halloween phase matches 1.. unless entity @e[type=evoker,tag=boss] run function halloween:reward


#ghost creatures that can only be seen when pumpkin on head
team leave @a[team=ghost]
team join ghost @a[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]}]
effect give @e[type=!player,team=ghost] invisibility 6 1 true

#intro
execute as @e[type=armor_stand,tag=hallow] at @s run function halloween:summon
