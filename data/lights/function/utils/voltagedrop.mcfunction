# $(MAP) $(LEVEL)

#> Remove Tags:
    $tag @e[tag=map.$(MAP).light,type=marker] remove flickering
#> TURN ON LIGHTS:
    $scoreboard players set ALL.LIGHT.LEVEL lights.VALUES $(LEVEL)
