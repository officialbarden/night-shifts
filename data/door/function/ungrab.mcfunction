scoreboard players reset @s door.ID
tag @s remove door.grabbed_handle
execute as @n[tag=door.handle,distance=..5] run data remove entity @s interaction