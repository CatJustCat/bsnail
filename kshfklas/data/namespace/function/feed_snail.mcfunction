advancement revoke @s only namespace:interacted_with_snail_holding_food
execute store result storage namespace:temp random_roll int 1 run random roll 1..10
execute if data storage namespace:temp {random_roll:1} run say tamed
say do something - we need an item modifier here to decrease the amount of items the plauer has