# // #MAX = 10 Blocks (assuming flashlight.raycast.limit < 1000)
scoreboard players set #MAX flashlight.raycast.limit 1000
scoreboard players operation #MAX flashlight.raycast.limit -= @s flashlight.raycast.limit
execute store result storage ns:storage TEMP.MACRO.DISTANCE float 0.01 run scoreboard players get #MAX flashlight.raycast.limit
