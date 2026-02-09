#> NSAJM.STATE -> 1 = IDLE
execute if score @s nsajm.state matches 1 run return fail
execute as @s[tag=aj.slasher.root] run function nsajm:slasher/animations/stop_all
function nsajm:slasher/animations/idle/random
scoreboard players set @s nsajm.state 1