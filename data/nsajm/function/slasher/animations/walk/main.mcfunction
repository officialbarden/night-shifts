#> NSAJM.STATE -> 2 = WALK
execute if score @s nsajm.state matches 2 run return fail
function nsajm:slasher/animations/stop_all
execute as @s[tag=aj.slasher.root] run function animated_java:slasher/animations/walk/play
execute as @s[tag=aj.slasher_head.root] run function animated_java:slasher_head/animations/walk/play
scoreboard players set @s nsajm.state 2

