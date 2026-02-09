stopsound @a[distance=..3] * nightshifts:sfx.tools.radio.idle
#playsound nightshifts:sfx.tools.radio.use


scoreboard players operation #ID weapon.entity.ID = @s weapon.entity.ID
execute as @e[predicate=weapons:id,tag=hands_weapons.model,tag=aj.hands_tools_radio.root] run function animated_java:hands_tools_radio/remove/this
scoreboard players reset @s weapon.entity.ID
scoreboard players reset @s equipped.weapon.ID

tag @s remove holding_radio
