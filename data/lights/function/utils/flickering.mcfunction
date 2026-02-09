# $(MAP)

#> Add tag
    $tag @e[tag=map.$(MAP).light,type=marker] add flickering
    $scoreboard players set @e[tag=map.$(MAP).light,type=marker] lights.STATE 1