# $(MAP)

#> Remove Tags:
    $tag @e[tag=map.$(MAP).light,type=marker] remove flickering
#> TURN ON LIGHTS:
    $scoreboard players set @e[tag=map.$(MAP).light,type=marker] lights.STATE 1
    $execute as @e[tag=map.$(MAP).light,type=marker] at @s run playsound nightshifts:sfx.extras.light_toggle master @a ~ ~ ~ 1 1
