execute as @s[tag=aj.the_nun.root] run function animated_java:the_nun/animations/idle/stop
execute as @s[tag=aj.the_nun.root] run function animated_java:the_nun/animations/attack.1/stop
execute as @s[tag=aj.the_nun.root] run function animated_java:the_nun/animations/walk.loop/stop
execute as @s[tag=aj.the_nun.root] run function animated_java:the_nun/animations/walk.stop.1/stop
execute as @s[tag=aj.the_nun.root] run function animated_java:the_nun/animations/walk.stop.2/stop
execute as @s[tag=aj.the_nun.root] run function animated_java:the_nun/animations/polaroid.flashed/stop
execute as @s[tag=aj.the_nun.root] run function animated_java:the_nun/animations/chase.loop/stop

scoreboard players reset @s nsajm.state
#execute unless entity @p[distance=..5,tag=nsajm.the_nun.victim.caught] unless entity @p[distance=..5,tag=nsajm.the_nun.victim.being_thrown] run tag @n[tag=nsajm.the_nun.model] remove nsajm.the_nun.model.attacking
