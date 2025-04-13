particle minecraft:heart ~ ~1 ~ 0.3 0.3 0.3 1 8
tag @s add bsnail.tamed

# put the id in the id iykyk
execute if data storage bsnail:temp player_id_present run return run scoreboard players operation @s bsnail.id = %temp_player_copy bsnail.id
scoreboard players add %global_id_increment bsnail.id 1
execute store result score @s bsnail.id run scoreboard players get %global_id_increment bsnail.id