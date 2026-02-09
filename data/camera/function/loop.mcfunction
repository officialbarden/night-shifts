
#> camera.viewing_sequence is to start timer.
scoreboard players add @a[tag=camera.viewing_sequence] camera.time 1
execute as @a[tag=camera.viewing_sequence] at @s if score @s camera.sequenceID matches 1 run return run function camera:sequences/introduction/keyframes
execute as @a[tag=camera.viewing_sequence] at @s if score @s camera.sequenceID matches 2 run return run function camera:sequences/main_menu/keyframes
execute as @a[tag=camera.viewing_sequence] at @s if score @s camera.sequenceID matches 3 run return run function camera:sequences/game_start/maplewood_mall/keyframes
