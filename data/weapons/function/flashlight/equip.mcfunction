#> Unequip
function weapons:flashlight/unequip

# Summon + ID System
execute if score weapons.animated weapon.config matches 1 as @s[tag=player_slim] rotated ~ 0 run function animated_java:hands_tools_flashlight/summon {args:{'variant':'slim'}}
execute if score weapons.animated weapon.config matches 1 as @s[tag=player_default] rotated ~ 0 run function animated_java:hands_tools_flashlight/summon {args:{'variant':'default'}}
execute as @e[type=item_display,distance=..1,tag=aj.global.entity] run data modify entity @s view_range set value 0.02f


execute as @n[tag=hands_weapons.model,tag=new] store result score @s VELOCITY.INIT.X run data get entity @s Pos[0] 1000
execute as @n[tag=hands_weapons.model,tag=new] store result score @s VELOCITY.INIT.Y run data get entity @s Pos[1] 1000
execute as @n[tag=hands_weapons.model,tag=new] store result score @s VELOCITY.INIT.Z run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag=hands_weapons.model,tag=new] weapon.entity.ID = .global weapon.entity.ID
scoreboard players operation @s weapon.entity.ID = .global weapon.entity.ID
scoreboard players add .global weapon.entity.ID 1
tag @e[tag=hands_weapons.model,tag=new] remove new


function weapons:flashlight/light_cast/light_remove
# Apply skin to hands
#function weapons:global/apply_skin

# Set Weapon Id
scoreboard players set @s equipped.weapon.ID 6