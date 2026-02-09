execute in minecraft:overworld run tp @s -329.68 69.00 -18.31 -968.70 2.55
gamemode adventure @s
tag @s remove camera.viewing_sequence
kill @e[tag=camera.maplewood_mall]
scoreboard players reset @s camera.time
scoreboard players reset @s camera.sequenceID
tag @s remove camera.viewing_cam.maplewood_mall
attribute @s scale base reset
clear @s
function player_hazmat:utils/spawn