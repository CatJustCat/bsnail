scoreboard players add %snail_tick_timer tick_counter 1

# every n ticks, snail_tick is called as every existing snail (atm n=5, but can change if its freaky as hell)
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"%snail_tick_timer"},"score":"tick_counter"},"range":{"min":5}} \
    as @e[type=minecraft:wandering_trader,tag=bsnail.snail] run function bsnail:snail_tick