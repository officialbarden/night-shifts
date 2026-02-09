execute as @e[tag=monsters.the_butcher.entity, tag=!monsters.the_butcher.entity.has_caught_player] at @s if entity @p[gamemode=!creative,gamemode=!spectator,distance=..3] run return run function monsters:entity/the_butcher/zprivate/anims/attack/main
execute as @e[tag=monsters.the_butcher.entity] at @s run function monsters:entity/the_butcher/zprivate/anims/main
execute as @a[tag=monsters.the_butcher.target_player.caught] at @s run function monsters:entity/the_butcher/global/force_spectate

execute as @e[tag=monsters.the_butcher.go_to.home] at @s run function monsters:entity/the_butcher/zprivate/go_to/home/move
execute as @e[tag=astar] at @s run particle electric_spark ~ ~ ~ 0 1 0 0 10 force @a