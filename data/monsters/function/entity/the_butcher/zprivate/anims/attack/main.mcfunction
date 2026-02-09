tag @s add monsters.the_butcher.attacking

scoreboard players operation #ID nsajm.ID = @s nsajm.ID

scoreboard objectives add the_butcher dummy
tag @p add monsters.the_butcher.target_player
execute store result score NearbyPlayers the_butcher if entity @p[distance=..10,tag=!monsters.the_butcher.target_player]

#execute on passengers run function monsters:entity/the_butcher/zprivate/anims/attack/drag_away/1
execute if score NearbyPlayers the_butcher matches 3.. on passengers run function monsters:entity/the_butcher/zprivate/anims/attack/drag_away/1
execute if score NearbyPlayers the_butcher matches ..2 on passengers run function monsters:entity/the_butcher/zprivate/anims/attack/drag_away/2
