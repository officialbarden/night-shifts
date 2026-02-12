tag @s add flashlight.owner
scoreboard players remove @s flashlight.raycast.limit 1
#particle dust{color:[1.000,1.000,1.000],scale:0.25} ~ ~ ~ 0 0 0 0 0 force

execute if block ~ ~ ~ #doors[open=true] positioned ^ ^ ^0.1 run return run function weapons:flashlight/light_cast/cast
execute unless block ~ ~ ~ #weapons:light_passable run scoreboard players set @s flashlight.raycast.limit 0
execute if score @s flashlight.raycast.limit matches ..0 unless block ~ ~ ~ #weapons:air positioned ^ ^ ^-0.1 if block ~ ~ ~ #weapons:air run return run function weapons:flashlight/light_cast/light_spawn
execute if score @s flashlight.raycast.limit matches ..0 unless block ~ ~ ~ #weapons:air positioned ^ ^ ^-0.1 if block ~ ~ ~ #weapons:air run return run function weapons:flashlight/light_cast/light_spawn
execute if score @s flashlight.raycast.limit matches ..0 run return run function weapons:flashlight/light_cast/light_spawn
#execute if entity @e[dx=0,dy=99,tag=!flashlight.owner,type=!#weapons:flashlight/ignore] run return run function weapons:flashlight/light_cast/light_spawn

#execute if block ~ ~ ~ #doors[open=true] positioned ^ ^ ^0.1 run return run function weapons:flashlight/light_cast/cast
execute if block ~ ~ ~ #weapons:air positioned ^ ^ ^0.1 run return run function weapons:flashlight/light_cast/cast
execute if block ~ ~ ~ #weapons:light_passable positioned ^ ^ ^0.1 run return run function weapons:flashlight/light_cast/cast
execute unless block ~ ~ ~ #weapons:air positioned ^ ^ ^-0.1 unless block ~ ~ ~ #air positioned ^ ^ ^-1 run return run function weapons:flashlight/light_cast/light_spawn
execute unless block ~ ~ ~ #weapons:air positioned ^ ^ ^-0.1 if block ~ ~ ~ #weapons:air run function weapons:flashlight/light_cast/light_spawn

