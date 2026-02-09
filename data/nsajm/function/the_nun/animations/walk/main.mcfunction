#> NSAJM.STATE -> 2 = WALK
execute if score @s nsajm.state matches 2 run return fail
function nsajm:the_nun/animations/stop_all
execute as @s[tag=aj.the_nun.root] run function animated_java:the_nun/animations/walk.loop/play
scoreboard players set @s nsajm.state 2

