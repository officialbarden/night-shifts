scoreboard players operation #ID nsajm.path.ID = @s nsajm.path.ID
#attribute @s scale base set 1.25

#data modify entity @s NoAI set value True

execute facing entity @n[tag=astar,tag=nsajm.tagged,tag=!nsajm.path.crossed] feet run rotate @s ~ ~
execute at @s run function monsters:entity/the_butcher/zprivate/go_to/home/snap
execute at @s run function monsters:entity/the_butcher/zprivate/go_to/home/move.translate



execute at @s if entity @n[tag=astar,tag=nsajm.tagged,tag=!nsajm.path.crossed,tag=astar.finalizer,dx=0,dy=99] run tp @s @n[tag=nsajm.tagged,tag=astar]
execute positioned ~ ~ ~ run tag @n[tag=astar,tag=nsajm.tagged,tag=!nsajm.path.crossed,distance=..1] add nsajm.path.crossed

execute if entity @n[tag=astar,tag=nsajm.tagged,tag=nsajm.path.crossed,tag=astar.finalizer] run tag @s remove monsters.the_butcher.go_to.home
execute if entity @n[tag=astar,tag=nsajm.tagged,tag=nsajm.path.crossed,tag=astar.finalizer] run tp @s ~ ~0.1 ~
kill @e[tag=nsajm.path.crossed]

