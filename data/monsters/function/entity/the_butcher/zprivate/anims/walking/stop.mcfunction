function animated_java:the_butcher/animations/pause_all

execute on vehicle unless entity @s[tag=monsters.the_butcher.entity.has_caught_player] on passengers run function animated_java:the_butcher/animations/idle/play
execute on vehicle if entity @s[tag=monsters.the_butcher.entity.has_caught_player] on passengers run function animated_java:the_butcher/animations/idle2/play
execute on vehicle run tag @s remove is_moving
