execute as @e[tag=monsters.the_butcher.entity] on passengers run function animated_java:the_butcher/remove/all
kill @e[tag=monsters.the_butcher.entity]
kill @e[tag=monsters.the_butcher.player]
kill @e[tag=monsters.the_butcher.player_camera]

tag @a remove monsters.the_butcher.target_player
tag @a remove monsters.the_butcher.target_player.caught
