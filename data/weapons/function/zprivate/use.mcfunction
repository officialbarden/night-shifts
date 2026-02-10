# // This function file is ran when player right clicks the item:
execute if score @s equipped.weapon.ID matches 1 run return run function weapons:fire_extinguisher/use
execute if score @s equipped.weapon.ID matches 2 run return run function weapons:broom/use
execute if score @s equipped.weapon.ID matches 3 run return run function weapons:radio/use
execute if score @s equipped.weapon.ID matches 4 run return run function weapons:spirit_box/use
execute if score @s equipped.weapon.ID matches 5 run return run function weapons:polaroid/use
execute if score @s equipped.weapon.ID matches 6 run return run function weapons:flashlight/use
