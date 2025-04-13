advancement revoke @s only bsnail:interacted_with_snail_holding_oak_leaves

execute store success storage bsnail:temp player_id_present int 1 run scoreboard players operation %temp_player_copy bsnail.id = @s bsnail.id

# We want to mimic minecraft's random chance of taming: 1/3 for cat and dog, 1/10 for parrot
execute as @n[type=minecraft:wandering_trader,tag=bsnail.snail,distance=..5] store result storage bsnail:temp random_roll int 1 run random roll 1..5
data merge storage bsnail:temp {tamed:0}
execute store success storage bsnail:temp tamed int 1 if data storage bsnail:temp {random_roll:1} as @n[type=minecraft:wandering_trader,tag=bsnail.snail,tag=!bsnail.tamed,distance=..4] at @s run function bsnail:tame

# put the score in the score iykyk
execute unless data storage bsnail:temp player_id_present store result score @s bsnail.id run scoreboard players get %global_id_increment bsnail.id

# snail is now changed, and so we check for a tamed snail (im not gonna understand this sentence in 3 weeks)
execute if data storage bsnail:temp {tamed:1} run clear @s minecraft:oak_leaves 1
