function animated_java:the_butcher/animations/pause_all

execute on vehicle unless entity @s[tag=monsters.the_butcher.entity.has_caught_player] on passengers run function animated_java:the_butcher/animations/walk/play
execute on vehicle if entity @s[tag=monsters.the_butcher.entity.has_caught_player] on passengers run function animated_java:the_butcher/animations/drag.walk2/play
execute on vehicle run tag @s add is_moving
