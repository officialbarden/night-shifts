execute store result storage ns:storage TEMP.MACRO.LIGHT_LEVEL int 1 run scoreboard players get @s polaroid.light.value
function weapons:polaroid/light/set2 with storage ns:storage TEMP.MACRO

execute if score @s polaroid.light.value matches ..-1 if block ~ ~ ~ light run setblock ~ ~ ~ air
execute if score @s polaroid.light.value matches ..-1 run kill @s