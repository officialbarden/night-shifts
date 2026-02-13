#> Unequip
function weapons:fire_extinguisher/unequip

# Summon + ID System
execute if score weapons.animated weapon.config matches 1 as @s[tag=player_slim] rotated ~ 0 run function animated_java:hands_weapons_fireextinguisher/summon {args:{'variant':'slim'}}
execute if score weapons.animated weapon.config matches 1 as @s[tag=player_default] rotated ~ 0 run function animated_java:hands_weapons_fireextinguisher/summon {args:{'variant':'default'}}


scoreboard players operation @e[tag=hands_weapons.model,tag=new] weapon.entity.ID = .global weapon.entity.ID
scoreboard players operation @s weapon.entity.ID = .global weapon.entity.ID
scoreboard players add .global weapon.entity.ID 1
ride @n[tag=hands_weapons.model,tag=new] mount @s
tag @e[tag=hands_weapons.model,tag=new] remove new

execute on passengers as @s[tag=hands_weapons.model] run data modify entity @s view_range set value 0.01f
execute on passengers as @s[tag=hands_weapons.model] on passengers run data modify entity @s view_range set value 0.01f

# Apply skin to hands
#function weapons:global/apply_skin

# Set Weapon Id
scoreboard players set @s equipped.weapon.ID 1