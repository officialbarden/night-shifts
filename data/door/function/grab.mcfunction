scoreboard players operation #ID door.ID = @s door.ID
execute on target unless entity @s[tag=door.grabbed_handle] run tag @a remove door.grabbed_handle
execute on target run tag @s add door.grabbed_handle
execute on target run scoreboard players operation @s door.ID = #ID door.ID

execute as @e[tag=door.hinge,predicate=door:id] at @s rotated as @p[predicate=door:id] rotated ~ ~ rotated ~-90 0 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=door.hinge.main,predicate=door:id] at @s run tp @n[tag=door.hinge,predicate=door:id,type=block_display] ~ ~ ~

execute if entity @p[tag=door.grabbed_handle,distance=5..] run data remove entity @s interaction
execute unless entity @p[predicate=door:id,tag=door.grabbed_handle] run data remove entity @s interaction
