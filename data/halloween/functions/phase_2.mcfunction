
#fangs
execute at @e[type=evoker_fangs] run summon husk ~ ~ ~ {Tags:[hallow]}
execute at @e[type=evoker_fangs] run item replace entity @e[type=husk,tag=hallow] armor.head with carved_pumpkin
kill @e[type=evoker_fangs]

#vex
execute at @e[type=vex] run summon stray ~ ~ ~ {Tags:[hallow]}
execute at @e[type=vex] run item replace entity @e[type=stray,tag=hallow] armor.head with carved_pumpkin
execute at @e[type=vex] run item replace entity @e[type=stray,tag=hallow] weapon.mainhand with bow
kill @e[type=vex]

#next
execute as @e[type=evoker,tag=boss,nbt=!{HandItems:[{id:"minecraft:totem_of_undying"}]}] run function halloween:next
