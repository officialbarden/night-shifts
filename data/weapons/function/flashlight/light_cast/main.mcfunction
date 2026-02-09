execute as @s[gamemode=!spectator] unless items entity @s weapon.* poisonous_potato[custom_data~{weapon:TRUE}] unless items entity @s weapon.mainhand poisonous_potato[custom_data~{weapon:TRUE,weapon_id:6}] run return run function weapons:flashlight/light_cast/reset
execute as @s[gamemode=spectator] run return run function weapons:flashlight/light_cast/reset

execute unless score State mist.monster matches 1 run scoreboard players set @s flashlight.raycast.limit 80
execute if score State mist.monster matches 1 run scoreboard players set @s flashlight.raycast.limit 1

function weapons:flashlight/light_cast/cast
