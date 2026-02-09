return fail
execute as @e[tag=door.hinge.main] at @s run function door:teleport
execute as @e[tag=door.handle] at @s on target if entity @s as @n[tag=door.handle] run function door:grab