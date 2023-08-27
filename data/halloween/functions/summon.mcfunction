#Crimson Tardis

scoreboard players add @s time 1
tp @s ~ ~.1 ~ ~6 ~
weather thunder

particle soul_fire_flame ^ ^ ^2 0 0 0 0 10 force @a
particle soul_fire_flame ^ ^ ^-2 0 0 0 0 10 force @a
particle soul_fire_flame ^2 ^ ^ 0 0 0 0 10 force @a
particle soul_fire_flame ^-2 ^ ^ 0 0 0 0 10 force @a
particle reverse_portal ~ ~ ~ .5 .5 .5 0.01 10 force @a
particle soul ~ ~ ~ 5 5 5 0.01 10 force @a

execute at @e[type=!player,type=!item,type=!experience_orb,distance=..60] run particle soul ~ ~1.5 ~ 0 0 0 0.01 1 force @a
effect give @e[type=!player,type=!item,type=!experience_orb,distance=..60] wither 1 1 true

execute if score @s time matches 260 at @s run function halloween:begin