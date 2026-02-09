#> NSAJM.STATE -> 1 = IDLE
execute if score @s nsajm.state matches 1 run return fail
execute as @s[tag=aj.the_nun.root] run function nsajm:the_nun/animations/stop_all
function nsajm:the_nun/animations/idle/random
scoreboard players set @s nsajm.state 1