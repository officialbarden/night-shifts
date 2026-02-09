tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #weapons:air run return run function death:random_animation with storage ns:storage TEMP.MACRO
$function animated_java:player_hazmat_animated/animations/death.mutilated.$(RNG_CORPSE)/play
