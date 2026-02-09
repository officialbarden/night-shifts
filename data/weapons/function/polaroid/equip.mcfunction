#> Unequip
function weapons:polaroid/unequip

# Summon + ID System
execute as @s[tag=player_slim] rotated ~ 0 run function animated_java:hands_tools_polaroid/summon {args:{'variant':'slim'}}
execute as @s[tag=player_default] rotated ~ 0 run function animated_java:hands_tools_polaroid/summon {args:{'variant':'default'}}
execute as @e[type=item_display,distance=..1,tag=aj.global.entity] run data modify entity @s view_range set value 0.01f

scoreboard players operation @e[tag=hands_weapons.model,tag=new] weapon.entity.ID = .global weapon.entity.ID
scoreboard players operation @s weapon.entity.ID = .global weapon.entity.ID
scoreboard players add .global weapon.entity.ID 1
tag @e[tag=hands_weapons.model,tag=new] remove new

# Apply skin to hands
#function weapons:global/apply_skin

# Set Weapon Id
scoreboard players set @s equipped.weapon.ID 5