execute as @s[tag=aj.slasher.root] run function animated_java:slasher/animations/idle.1/stop
execute as @s[tag=aj.slasher.root] run function animated_java:slasher/animations/idle.2/stop
execute as @s[tag=aj.slasher.root] run function animated_java:slasher/animations/idle.3/stop
execute as @s[tag=aj.slasher.root] run function animated_java:slasher/animations/attack.1/stop
execute as @s[tag=aj.slasher.root] run function animated_java:slasher/animations/attack.2/stop
execute as @s[tag=aj.slasher.root] run function animated_java:slasher/animations/attack.3/stop
execute as @s[tag=aj.slasher.root] run function animated_java:slasher/animations/walk/stop

execute as @s[tag=aj.slasher_head.root] run function animated_java:slasher_head/animations/idle.1/stop
execute as @s[tag=aj.slasher_head.root] run function animated_java:slasher_head/animations/idle.2/stop
execute as @s[tag=aj.slasher_head.root] run function animated_java:slasher_head/animations/idle.3/stop
execute as @s[tag=aj.slasher_head.root] run function animated_java:slasher_head/animations/attack.1/stop
execute as @s[tag=aj.slasher_head.root] run function animated_java:slasher_head/animations/attack.2/stop
execute as @s[tag=aj.slasher_head.root] run function animated_java:slasher_head/animations/attack.3/stop
execute as @s[tag=aj.slasher_head.root] run function animated_java:slasher_head/animations/walk/stop

scoreboard players reset @s nsajm.state
data modify entity @n[tag=nsajm.slasher.entity] NoAI set value FALSE
execute unless entity @p[distance=..5,tag=nsajm.slasher.victim.caught] unless entity @p[distance=..5,tag=nsajm.slasher.victim.being_thrown] run tag @n[tag=nsajm.slasher.model] remove nsajm.slasher.model.attacking
