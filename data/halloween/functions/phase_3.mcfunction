
#fangs
execute at @e[type=evoker_fangs] run summon zombified_piglin ~ ~ ~ {Tags:[hallow]}
execute at @e[type=evoker_fangs] run item replace entity @e[type=zombified_piglin,tag=hallow] armor.head with carved_pumpkin
kill @e[type=evoker_fangs]

#vex
execute at @e[type=vex] run summon wither_skeleton ~ ~ ~ {Tags:[hallow]}
execute at @e[type=vex] run item replace entity @e[type=wither_skeleton,tag=hallow] armor.head with carved_pumpkin
execute at @e[type=vex] run item replace entity @e[type=wither_skeleton,tag=hallow] weapon.mainhand with golden_sword
kill @e[type=vex]