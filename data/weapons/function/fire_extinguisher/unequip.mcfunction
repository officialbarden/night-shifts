scoreboard players operation #ID weapon.entity.ID = @s weapon.entity.ID
execute as @e[predicate=weapons:id,tag=hands_weapons.model,tag=aj.hands_weapons_fireextinguisher.root] run function animated_java:hands_weapons_fireextinguisher/remove/this
scoreboard players reset @s equipped.weapon.ID

