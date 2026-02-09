#execute as @e[tag=hands_weapons.model] at @s run function weapons:global/teleport/store_updates
execute as @a at @s run function weapons:zprivate/use_mode/main

schedule function weapons:global/loop_1t 1t replace
