#> Attack Animation:

execute if entity @s[tag=nsajm.the_nun.model.stunned_by_polaroid] run return fail
execute if entity @s[tag=nsajm.the_nun.model.attacking] run return fail
execute on vehicle at @s if entity @p[distance=..3] on passengers run return run function nsajm:the_nun/animations/attack/main
execute on vehicle run data modify entity @s NoAI set value FALSE

#> Play Audio if being Chased:
execute at @s unless score @s nsajm.state matches 5 on vehicle if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{targeted_entity:{}}} if entity @s as @n[tag=nsajm.the_nun.model,predicate=nsajm:id/main] run return run function nsajm:the_nun/animations/chase/main
execute at @s[scores={nsajm.state=4}] on vehicle unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{targeted_entity:{}}} if entity @s as @n[tag=nsajm.the_nun.model,predicate=nsajm:id/main] run function nsajm:the_nun/animations/chase/stop


#> Walk Cycle Toggling:
execute on vehicle unless predicate nsajm:boolean/is_moving on passengers run return run function nsajm:the_nun/animations/idle/main
execute on vehicle if predicate nsajm:boolean/is_moving on passengers run return run function nsajm:the_nun/animations/walk/main

