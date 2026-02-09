#> LIGHTS.STATE:
# 1 -> LIGHT ON
# 0 -> LIGHT OFF

scoreboard objectives add lights.STATE dummy
scoreboard objectives add lights.TIMER dummy
scoreboard objectives add lights.VALUES dummy

execute unless score TIMER.MIN lights.VALUES matches -2147483648..2147483647 run scoreboard players set TIMER.MIN lights.VALUES 10
execute unless score TIMER.MAX lights.VALUES matches -2147483648..2147483647 run scoreboard players set TIMER.MAX lights.VALUES 100
execute unless score LIGHT.LEVEL.MIN lights.VALUES matches -2147483648..2147483647 run scoreboard players set TIMER.MIN lights.VALUES 0
execute unless score LIGHT.LEVEL.MAX lights.VALUES matches -2147483648..2147483647 run scoreboard players set TIMER.MAX lights.VALUES 15
execute unless score ALL.LIGHT.LEVEL lights.VALUES matches -2147483648..2147483647 run scoreboard players set ALL.LIGHT.LEVEL lights.VALUES 15

function lights:tick

