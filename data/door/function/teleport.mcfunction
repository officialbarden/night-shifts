scoreboard players operation #ID door.ID = @s door.ID
tp @n[tag=door.hinge,predicate=door:id,type=block_display] @s
execute rotated as @n[tag=door.hinge,predicate=door:id] positioned ^ ^ ^0.9 run tp @n[tag=door.handle,predicate=door:id,type=interaction] ~ ~ ~