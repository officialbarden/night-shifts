scoreboard players operation #ID mist.ID = @s mist.ID
execute anchored eyes positioned ^ ^ ^ run tp @n[tag=mist.monster,predicate=monsters:id/mist.monster/id] ~ ~ ~
execute as @e[tag=mist.monster] rotated as @s run rotate @n[tag=mist.monster] ~0.5 0
