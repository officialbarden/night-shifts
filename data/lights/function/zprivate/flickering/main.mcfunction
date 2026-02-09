execute store result storage ns:storage TEMP.MACRO.LIGHT.TIMER.MIN int 1 run scoreboard players get TIMER.MIN lights.VALUES
execute store result storage ns:storage TEMP.MACRO.LIGHT.TIMER.MAX int 1 run scoreboard players get TIMER.MAX lights.VALUES
execute store result storage ns:storage TEMP.MACRO.LIGHT.MIN int 1 run scoreboard players get LIGHT.LEVEL.MIN lights.VALUES
execute store result storage ns:storage TEMP.MACRO.LIGHT.MAX int 1 run scoreboard players get LIGHT.LEVEL.MAX lights.VALUES

#> Set a Random Timer
execute unless score @s lights.TIMER matches -2147483648..2147483647 run function lights:zprivate/flickering/macro_timer with storage ns:storage TEMP.MACRO.LIGHT.TIMER

#> Decrement Timer:
scoreboard players remove @s lights.TIMER 1
execute if score @s lights.TIMER matches ..0 run function lights:zprivate/flickering/fill
