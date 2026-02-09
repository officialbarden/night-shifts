# SEQUENCEID = 1

scoreboard players reset @s camera.time
tag @s add camera.viewing_sequence

scoreboard players set @s camera.sequenceID 1


title @s times 10 40 30
function camera:16_10

gamemode spectator @s
spectate @n[tag=camera.BLACK_SCREEN]
dialog clear @s
tag @s add rejoined