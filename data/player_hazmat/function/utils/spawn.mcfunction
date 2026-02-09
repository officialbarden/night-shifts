#> Setup ID system
scoreboard players operation #ID player_hazmat.ID = @s player_hazmat.ID

#> Spawn Animated Java "Player"
execute rotated ~ 0 run function animated_java:player_hazmat/summon {args:{}}


#> ID system between the model and the player
scoreboard players operation @s player_hazmat.ID = .global player_hazmat.ID
scoreboard players operation @n[tag=player_hazmat.new] player_hazmat.ID = .global player_hazmat.ID
scoreboard players add .global player_hazmat.ID 1
#loot replace entity @n[tag=aj.player_hazmat.node.player_head] contents loot player_hazmat:player/head


#> Remove Redundant Tags
tag @e[tag=player_hazmat.new] remove player_hazmat.new
