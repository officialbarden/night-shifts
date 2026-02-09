execute rotated ~ 0 run function animated_java:player_hazmat_animated/summon {args:{ variant: 'bloody'}}
execute store result storage ns:storage TEMP.MACRO.RNG_CORPSE int 1 run random value 1..3
execute as @n[tag=player_hazmat_animated.model,tag=player_hazmat_animated.new] at @s run function death:random_animation with storage ns:storage TEMP.MACRO
function death:spawn_loot

clear @s
gamemode spectator @s
effect give @s night_vision infinite 1 true
tag @e[tag=player_hazmat_animated.model,tag=player_hazmat_animated.new] remove player_hazmat_animated.new


