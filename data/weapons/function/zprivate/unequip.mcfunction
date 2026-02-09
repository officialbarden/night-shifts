execute if entity @s[gamemode=spectator] run return run function #weapons:unequip_all
execute if score @s equipped.weapon.ID matches 1 unless items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:1}] run return run function weapons:fire_extinguisher/unequip
execute if score @s equipped.weapon.ID matches 2 unless items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:2}] run return run function weapons:broom/unequip
execute if score @s equipped.weapon.ID matches 3 unless items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:3}] run return run function weapons:radio/unequip
execute if score @s equipped.weapon.ID matches 4 unless items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:4}] run return run function weapons:spirit_box/unequip
execute if score @s equipped.weapon.ID matches 5 unless items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:5}] run return run function weapons:polaroid/unequip
execute if score @s equipped.weapon.ID matches 6 unless items entity @s weapon.* *[custom_data~{weapon:TRUE,weapon_id:6}] run return run function weapons:flashlight/unequip
