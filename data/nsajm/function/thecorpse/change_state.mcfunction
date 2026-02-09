scoreboard players reset STATE.TIMER monster.thecorpse.scoreboard
execute store result score #TIMER monster.thecorpse.scoreboard run random value 100..220

scoreboard objectives add __.random dummy
execute store result score #VALUE __.random run random value 1..10
execute if score #VALUE __.random matches 1 if score .STATE monster.thecorpse.scoreboard matches 1 run return run scoreboard players set .STATE monster.thecorpse.scoreboard 2
