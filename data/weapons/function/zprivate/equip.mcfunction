# // This function file spawns the animatedjava rig when the item is held.
execute if entity @s[gamemode=spectator] run return fail
execute unless score @s equipped.weapon.ID matches -2147483648..2147483647 if items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:1}] run return run function weapons:fire_extinguisher/equip
execute unless score @s equipped.weapon.ID matches -2147483648..2147483647 if items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:2}] run return run function weapons:broom/equip
execute unless score @s equipped.weapon.ID matches -2147483648..2147483647 if items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:3}] run return run function weapons:radio/equip
execute unless score @s equipped.weapon.ID matches -2147483648..2147483647 if items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:4}] run return run function weapons:spirit_box/equip
execute unless score @s equipped.weapon.ID matches -2147483648..2147483647 if items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:5}] run return run function weapons:polaroid/equip
execute unless score @s equipped.weapon.ID matches -2147483648..2147483647 if items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:6}] run return run function weapons:flashlight/equip
