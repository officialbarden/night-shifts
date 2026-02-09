#> Attack Animation:
execute if entity @s[tag=nsajm.slasher.model.attacking] run return fail
execute on vehicle at @s if entity @p[distance=..3] on passengers run return run function nsajm:slasher/animations/attack/main

#> Walk Cycle Toggling:
execute on vehicle unless predicate nsajm:boolean/is_moving on passengers run return run function nsajm:slasher/animations/idle/main
execute on vehicle if predicate nsajm:boolean/is_moving on passengers run return run function nsajm:slasher/animations/walk/main
