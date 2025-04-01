advancement revoke @s only namespace:interacted_with_snail_holding_food

# We want to mimic minecraft's random chance of taming: 1/3 for cat and dog, 1/10 for parrot
execute store result storage namespace:temp random_roll int 1 run random roll 1..10
execute if data storage namespace:temp {random_roll:1} run say tamed
clear @s stone 1
say do something - we need an item modifier here to decrease the amount of items the plauer has