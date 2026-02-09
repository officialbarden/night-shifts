scoreboard objectives add hazmat.ID dummy
scoreboard players add .global hazmat.ID 1
execute if score .global hazmat.ID matches 1000.. run scoreboard players set .global hazmat.ID 1
