function animated_java:the_butcher/animations/pause_all
function animated_java:the_butcher/animations/drag.walk/play


summon item_display ~ ~ ~ {Tags:["monsters.the_butcher.player_camera","new"], teleport_duration:2}

scoreboard players operation @n[tag=monsters.the_butcher.player_camera,tag=new] nsajm.ID = @s nsajm.ID
tag @e[tag=monsters.the_butcher.player_camera,tag=new] remove new


gamemode spectator @p[tag=monsters.the_butcher.target_player]
#ride @s mount @n[tag=monsters.the_butcher.player,predicate=nsajm:id/main]


scoreboard players operation @p[tag=monsters.the_butcher.target_player] nsajm.ID = @s nsajm.ID
tag @p[tag=monsters.the_butcher.target_player] add monsters.the_butcher.target_player.caught
tag @p[tag=monsters.the_butcher.target_player] remove monsters.the_butcher.target_player

execute on vehicle run tag @s add monsters.the_butcher.entity.has_caught_player