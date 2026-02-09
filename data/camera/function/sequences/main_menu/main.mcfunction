# SEQUENCE ID = 2
scoreboard players reset @s camera.time
tag @s add camera.viewing_sequence


#title @s times 10 40 99999
scoreboard players set @s camera.sequenceID 2
function camera:16_10
gamemode spectator @s
spectate @n[tag=camera.MENU]