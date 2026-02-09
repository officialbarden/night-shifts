scoreboard players operation #ID weapon.entity.ID = @s weapon.entity.ID
execute as @e[predicate=weapons:id,tag=hands_weapons.model,tag=aj.hands_tools_polaroid.root] run function animated_java:hands_tools_polaroid/remove/this
scoreboard players reset @s weapon.entity.ID
scoreboard players reset @s equipped.weapon.ID
attribute @s block_interaction_range base reset
attribute @s entity_interaction_range base reset