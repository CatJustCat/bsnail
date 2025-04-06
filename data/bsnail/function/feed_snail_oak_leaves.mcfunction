advancement revoke @s only bsnail:interacted_with_snail_holding_oak_leaves

# We want to mimic minecraft's random chance of taming: 1/3 for cat and dog, 1/10 for parrot
execute store result storage bsnail:temp random_roll int 1 run random roll 1..5
execute if data storage bsnail:temp {random_roll:1} as @n[type=minecraft:wandering_trader,tag=bsnail.snail,tag=!bsnail.tamed] at @s run function bsnail:tame

clear @s stone 1
