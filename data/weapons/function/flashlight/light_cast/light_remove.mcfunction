scoreboard players operation #ID flashlight.ID = @s flashlight.ID
execute as @n[predicate=weapons:tools/flashlight/id,tag=flashlight.light.marker,type=marker] at @s run function weapons:flashlight/light_cast/light_remove2
kill @e[predicate=weapons:tools/flashlight/id,tag=flashlight.light.marker,type=marker]
scoreboard players reset @s flashlight.ID
