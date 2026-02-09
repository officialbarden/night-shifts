
execute as @e[tag=thecorpse.entity] run scoreboard players add STATE.TIMER monster.thecorpse.scoreboard 1
execute as @e[tag=thecorpse.entity] if score STATE.TIMER monster.thecorpse.scoreboard >= #TIMER monster.thecorpse.scoreboard run function nsajm:thecorpse/change_state

execute as @e[tag=thecorpse.entity] at @s if score .STATE monster.thecorpse.scoreboard matches 2 run function nsajm:thecorpse/state/stalk/main
execute as @e[tag=thecorpse.entity] at @s if score .STATE monster.thecorpse.scoreboard matches 1 run function nsajm:thecorpse/state/idle/main
