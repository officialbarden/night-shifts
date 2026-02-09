scoreboard players set X VELOCITY.INIT 0
scoreboard players set Y VELOCITY.INIT 0
scoreboard players set Z VELOCITY.INIT 0

execute store result score X VELOCITY.FINAL run data get entity @s Pos[0] 1000
execute store result score Y VELOCITY.FINAL run data get entity @s Pos[1] 1000
execute store result score Z VELOCITY.FINAL run data get entity @s Pos[2] 1000

scoreboard players operation X VELOCITY.INIT = @s VELOCITY.INIT.X
scoreboard players operation Y VELOCITY.INIT = @s VELOCITY.INIT.Y
scoreboard players operation Z VELOCITY.INIT = @s VELOCITY.INIT.Z

scoreboard players operation X VELOCITY.FINAL -= X VELOCITY.INIT
scoreboard players operation Y VELOCITY.FINAL -= Y VELOCITY.INIT
scoreboard players operation Z VELOCITY.FINAL -= Z VELOCITY.INIT

execute store result storage ns:storage TEMP.VELOCITY.X float 0.001 run scoreboard players get X VELOCITY.FINAL
execute store result storage ns:storage TEMP.VELOCITY.Y float 0.001 run scoreboard players get Y VELOCITY.FINAL
execute store result storage ns:storage TEMP.VELOCITY.Z float 0.001 run scoreboard players get Z VELOCITY.FINAL

function weapons:global/teleport/macro with storage ns:storage TEMP.VELOCITY 
#function weapons:global/teleport/store_updates

execute store result score @s VELOCITY.INIT.X run data get entity @s Pos[0] 1000
execute store result score @s VELOCITY.INIT.Y run data get entity @s Pos[1] 1000
execute store result score @s VELOCITY.INIT.Z run data get entity @s Pos[2] 1000
