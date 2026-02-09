#> ID system
scoreboard players operation #ID weapon.entity.ID = @s weapon.entity.ID


#> Put item back in mainhand:
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air


#> Only allows toggling when the player has a flashlight item.
execute unless items entity @s container.* poisonous_potato[custom_data~{weapon:TRUE,weapon_id:6}] run return fail
execute as @n[tag=hands_weapons.model,predicate=weapons:id,tag=aj.hands_tools_flashlight.root] run function animated_java:hands_tools_flashlight/animations/use/play
execute unless entity @n[tag=hands_weapons.model,predicate=weapons:id,tag=aj.hands_tools_flashlight.root] run playsound nightshifts:sfx.tools.flashlight.click master @s ~ ~ ~ 0.4 1
execute if score @s flashlight.TOGGLE matches 1.. run function weapons:flashlight/light_cast/light_remove
execute if score @s flashlight.TOGGLE matches 1.. run return run scoreboard players set @s flashlight.TOGGLE 0
scoreboard players add @s flashlight.TOGGLE 1