
#fangs
execute at @e[type=evoker_fangs] run summon zombie ~ ~ ~ {Tags:[hallow]}
execute at @e[type=evoker_fangs] run item replace entity @e[type=zombie,tag=hallow] armor.head with carved_pumpkin
kill @e[type=evoker_fangs]

#vex
execute at @e[type=vex] run summon skeleton ~ ~ ~ {Tags:[hallow]}
execute at @e[type=vex] run item replace entity @e[type=skeleton,tag=hallow] armor.head with carved_pumpkin
execute at @e[type=vex] run item replace entity @e[type=skeleton,tag=hallow] weapon.mainhand with bow
kill @e[type=vex]

#next
execute as @e[type=evoker,tag=boss] at @s unless entity @e[type=phantom,distance=..2] run function halloween:next