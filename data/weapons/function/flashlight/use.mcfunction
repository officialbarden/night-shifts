execute as @n[tag=hands_weapons.model,predicate=weapons:id] run function animated_java:hands_tools_flashlight/animations/use/play


execute if score @s flashlight.TOGGLE matches 1.. run function weapons:flashlight/light_cast/light_remove
execute if score @s flashlight.TOGGLE matches 1.. run return run scoreboard players set @s flashlight.TOGGLE 0
scoreboard players add @s flashlight.TOGGLE 1