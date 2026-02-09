#> NSAJM.STATE -> 4 = CHASE
execute on vehicle run effect give @s speed infinite 3 true

execute if score @s nsajm.state matches 4 run return fail
execute on vehicle on target run tag @s add being_chased
execute on vehicle on target run playsound nightshifts:sfx.extras.horror_screech.start master @s ~ ~ ~ 0.8 1
execute as @s[tag=aj.the_nun.root] run function nsajm:the_nun/animations/stop_all
function animated_java:the_nun/animations/chase.start/play
scoreboard players set @s nsajm.state 4
