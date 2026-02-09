execute positioned ~ ~ ~ unless block ~ ~ ~ #air run return fail
execute positioned ~ ~ ~ unless block ~ ~ ~ #weapons:light_passable run return fail

scoreboard objectives add polaroid.light.value dummy
function weapons:polaroid/light/summon
#execute positioned ~-1 ~ ~ if block ~ ~ ~ #air run function weapons:polaroid/light/summon
#execute positioned ~1 ~ ~ if block ~ ~ ~ #air run function weapons:polaroid/light/summon
#execute positioned ~ ~ ~-1 if block ~ ~ ~ #air run function weapons:polaroid/light/summon
#execute positioned ~ ~ ~1 if block ~ ~ ~ #air run function weapons:polaroid/light/summon


execute rotated as @p positioned ^ ^ ^1 run return run function weapons:polaroid/light/init

