execute as @s[tag=nightshifts.tools.spirit_box.cooldown] run return fail
execute unless score @s spirit_box.TOGGLE matches -2147483648..2147483647 run scoreboard players set @s spirit_box.TOGGLE 0

execute if score @s spirit_box.TOGGLE matches ..0 as @n[tag=hands_weapons.model,predicate=weapons:id] run function animated_java:hands_tools_spiritbox/animations/ambient/play
execute if score @s spirit_box.TOGGLE matches ..0 run return run scoreboard players set @s spirit_box.TOGGLE 1

execute if score @s spirit_box.TOGGLE matches 1.. as @n[tag=hands_weapons.model,predicate=weapons:id] run function animated_java:hands_tools_spiritbox/animations/off/play {to_frame: 136, duration: 1}
execute if score @s spirit_box.TOGGLE matches 1.. run return run scoreboard players set @s spirit_box.TOGGLE 0
