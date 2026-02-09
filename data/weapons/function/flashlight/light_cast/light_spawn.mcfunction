tag @s remove flashlight.owner
execute positioned ~ ~ ~ if entity @n[type=marker,tag=flashlight.light.marker,distance=..0.01] run return fail
function weapons:flashlight/light_cast/light_remove


summon marker ~ ~ ~ {Tags:["flashlight.light.marker", "new"]}
scoreboard players operation @s flashlight.ID = .global flashlight.ID
scoreboard players operation @n[tag=flashlight.light.marker,tag=new] flashlight.ID = .global flashlight.ID
scoreboard players add .global flashlight.ID 1
tag @e[tag=flashlight.light.marker,tag=new,type=marker] remove new

#function weapons:flashlight/light_cast/raymarch/math
function weapons:flashlight/light_cast/light
