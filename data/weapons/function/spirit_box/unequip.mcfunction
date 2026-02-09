stopsound @s * nightshifts:sfx.tools.spirit_box.white_noise 

scoreboard players operation #ID weapon.entity.ID = @s weapon.entity.ID
execute as @e[predicate=weapons:id,tag=hands_weapons.model,tag=aj.hands_tools_spiritbox.root] run function animated_java:hands_tools_spiritbox/remove/this
scoreboard players reset @s weapon.entity.ID
scoreboard players reset @s equipped.weapon.ID
