#> ID predicate validating:
scoreboard players operation #ID nsajm.ID = @s nsajm.ID
execute as @e[tag=nsajm.slasher.model,tag=aj.slasher.root,predicate=nsajm:id/main] at @s run ride @s mount @n[tag=nsajm.slasher.entity,predicate=nsajm:id/main]
execute as @e[tag=nsajm.slasher.model,tag=aj.slasher_head.root,predicate=nsajm:id/main] at @s run ride @s mount @n[tag=nsajm.slasher.entity,predicate=nsajm:id/main]

#> Model Animations:
execute as @n[tag=nsajm.slasher.model,predicate=nsajm:id/main] at @s run function nsajm:slasher/animations/main

#> Smooth Rotation (By CLOUD WOLF)
execute as @e[tag=nsajm.slasher.model,tag=aj.slasher.root,predicate=nsajm:id/main] at @s \
    anchored eyes rotated as @n[tag=nsajm.slasher.entity] \
    positioned ^ ^ ^5 \
    rotated as @s \
    positioned ^ ^ ^10 \
    facing entity @s eyes \
    facing ^ ^ ^-1 \
    positioned as @s \
    run rotate @s ~ 0

execute as @e[tag=nsajm.slasher.model,tag=aj.slasher_head.root,predicate=nsajm:id/main] at @s \
    if entity @p[distance=..10] \
    positioned ^ ^ ^3 \
    facing entity @p[distance=..10] eyes \
    run rotate @s ~ 0

