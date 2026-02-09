# $(MAP)

#> Remove Tags:
    $tag @e[tag=map.$(MAP).light,type=marker] remove flickering
#> TURN OFF LIGHTS:
    $scoreboard players set @e[tag=map.$(MAP).light,type=marker] lights.STATE 0
