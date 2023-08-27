
tellraw @a {"color":"gold","text":"You have slain the Lord of Halloween\nWell Done!"}
scoreboard players set halloween phase 0
give @a enchanted_golden_apple
give @a totem_of_undying
team join ghost @e[limit=16,sort=random,type=!player,tag=!hallow]
execute at @a run summon cat ~ ~ ~ {variant:all_black}
#kill @e[tag=hallow]
time set day
weather clear