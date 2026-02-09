kill @e[tag=astar]
execute at @n[tag=monsters.the_butcher.home] run function astar:_

scoreboard players operation @s nsajm.path.ID = @s nsajm.ID
scoreboard players operation @e[tag=astar.finished,tag=astar,tag=!nsajm.tagged] nsajm.path.ID = @s nsajm.path.ID

execute as @e[tag=astar.finished] at @s run tp @s ~ ~-0.5 ~
tag @e[tag=astar.finished,tag=astar,tag=!nsajm.tagged] add nsajm.tagged

execute as @s[tag=!monsters.the_butcher.go_to.home] on passengers run function animated_java:the_butcher/animations/drag.walk2/play
tag @s add monsters.the_butcher.go_to.home

