#> If already exists, don't spawn another:
execute if entity @n[tag=thecorpse.entity] run return fail


scoreboard objectives add __.random dummy
execute store result score VALUE __.random run random value 1..10
execute if score VALUE __.random matches 1 as @r at @s run function nsajm:thecorpse/spawn
