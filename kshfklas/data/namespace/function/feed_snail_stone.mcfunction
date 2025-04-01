advancement revoke @s only namespace:interacted_with_snail_holding_stone

# We want to mimic minecraft's random chance of taming: 1/3 for cat and dog, 1/10 for parrot
execute store result storage namespace:temp random_roll int 1 run random roll 1..5
execute if data storage namespace:temp {random_roll:1} as @n[type=minecraft:wandering_trader,tag=namespace.snail] run function namespace:tame

clear @s stone 1