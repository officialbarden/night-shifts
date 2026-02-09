tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #weapons:air run return run function death:random_animation with storage ns:storage TEMP.MACRO
tp @s ~ ~0.05 ~
$function animated_java:player_hazmat_animated/animations/death.$(RNG_CORPSE)/play

