#> If Mist doesnt Exist:
execute if score State mist.monster matches -1 run return fail

execute if score TeleportOrRide mist.monster matches 1 as @a at @s run function monsters:entity/mist_monster/global/tp
execute if score TeleportOrRide mist.monster matches 2 as @a at @s run function monsters:entity/mist_monster/global/ride

#> Mist's State-Based Behaviors
execute if score State mist.monster matches 0 run return run function monsters:entity/mist_monster/zprivate/state/0/main
execute if score State mist.monster matches 1 run return run function monsters:entity/mist_monster/zprivate/state/1/main
execute if score State mist.monster matches 2 run return run function monsters:entity/mist_monster/zprivate/state/2/main
execute if score State mist.monster matches 3 run return run function monsters:entity/mist_monster/zprivate/state/3/main
