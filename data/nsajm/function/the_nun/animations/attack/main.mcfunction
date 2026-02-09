#> Prevent Looping
# NSAJM.STATE -> 3 = ATTACK
execute if score @s nsajm.state matches 3 run return fail
tag @s add nsajm.the_nun.model.attacking


#> Stop Entity from Pathfinding:
    execute on vehicle as @s[tag=nsajm.the_nun.entity,predicate=nsajm:id/main] run data modify entity @s NoAI set value TRUE
    rotate @s facing entity @p
    execute rotated as @s run rotate @s ~ 0

#> Stop all Animations
function nsajm:the_nun/animations/stop_all
execute positioned ~ ~-4 ~ if entity @p[distance=..1] run particle end_rod ~ ~ ~ 1 1 1 0 100 force @a
execute positioned ~ ~-4 ~ if entity @p[distance=..1] run data modify storage nsajm:storage NSAJM.MACRO.ANIMATION_NUMBER set value 3

function nsajm:the_nun/animations/attack/macro with storage nsajm:storage NSAJM.MACRO

#> Prevent Looping
scoreboard players set @s nsajm.state 3

