# // weapon.view.model = 1 -> teleport; 2 -> ride
scoreboard players operation #ID weapon.entity.ID = @s weapon.entity.ID
execute if score weapon.view.mode weapon.config matches 1 anchored eyes positioned ^ ^ ^ run tp @n[tag=hands_weapons.model,predicate=weapons:id] ~ ~ ~ ~ ~

execute if score weapon.view.mode weapon.config matches 2 on passengers as @s[tag=hands_weapons.model] run data modify entity @s teleport_duration set value 2
execute if score weapon.view.mode weapon.config matches 2 on passengers as @s[tag=hands_weapons.model] run rotate @s ~ ~
execute if score weapon.view.mode weapon.config matches 2 run return run ride @n[tag=hands_weapons.model,predicate=weapons:id] mount @s

