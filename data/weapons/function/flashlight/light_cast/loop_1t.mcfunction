# // This is the flashlights tick file.
execute as @a[scores={flashlight.TOGGLE=1..}] at @s anchored eyes positioned ^ ^ ^0.1 run function weapons:flashlight/light_cast/main
execute as @e[tag=flashlight.light.marker,type=marker] at @s run function weapons:flashlight/light_cast/light

schedule function weapons:flashlight/light_cast/loop_1t 2t replace
