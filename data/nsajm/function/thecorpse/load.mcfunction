scoreboard objectives add monster.thecorpse.scoreboard dummy

#> .STATE VALUES:
# 1 = WATCHING
# 2 = ATTACKING
scoreboard players set .STATE monster.thecorpse.scoreboard 1
execute store result score #TIMER monster.thecorpse.scoreboard run random value 100..220
