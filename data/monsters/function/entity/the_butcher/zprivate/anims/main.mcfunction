scoreboard players operation #ID nsajm.ID = @s nsajm.ID

execute rotated as @s on passengers run rotate @s ~ 0
execute on passengers facing entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] eyes run rotate @s ~ 0

execute if entity @s[tag=monsters.the_butcher.go_to.home] run return fail
execute as @s[tag=!is_moving] if predicate nsajm:boolean/is_moving on passengers run function monsters:entity/the_butcher/zprivate/anims/walking/start
execute as @s[tag=is_moving] unless predicate nsajm:boolean/is_moving on passengers run function monsters:entity/the_butcher/zprivate/anims/walking/stop
