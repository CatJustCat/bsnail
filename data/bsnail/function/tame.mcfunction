particle minecraft:heart ~ ~1 ~ 0.3 0.3 0.3 1 8
tag @s add bsnail.tamed

# put the id in the id iykyk
scoreboard players add %global_id_increment bsnail.id 1
execute store result score @s bsnail.id run scoreboard players get %global_id_increment bsnail.id