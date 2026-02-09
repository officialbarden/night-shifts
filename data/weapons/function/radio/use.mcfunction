execute as @n[tag=hands_weapons.model,predicate=weapons:id] run function animated_java:hands_tools_radio/animations/use/play

scoreboard objectives add raycast dummy
scoreboard players set @s raycast 300

execute anchored eyes rotated as @s positioned ^ ^ ^0.1 run function weapons:radio/raycast/main
