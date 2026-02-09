# SEQUENCE ID = 3
scoreboard players reset @s camera.time
tag @s add camera.viewing_sequence
tag @s add camera.viewing_cam.BLACK

tp @s 8 63 -10
#title @s times 10 40 99999
scoreboard players set @s camera.sequenceID 3
function camera:16_10
gamemode spectator @s
spectate @e[limit=1,tag=camera.BLACK_SCREEN] @s
#playsound nightshifts:music.maplewoodmalltheme master @s ~ ~ ~ 0.4 1 0.4
function player_hazmat:utils/remove

# Ignore line 14 Error;
data modify entity @s abilities.flySpeed set value 0

attribute @s scale base set 0