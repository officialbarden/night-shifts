#> ID predicate validating:
scoreboard players operation #ID nsajm.ID = @s nsajm.ID
execute as @n[tag=nsajm.the_nun.model,tag=aj.the_nun.root,predicate=nsajm:id/main] at @s run ride @s mount @n[tag=nsajm.the_nun.entity,predicate=nsajm:id/main]

execute positioned ~ ~ ~ if entity @n[tag=polaroid.light,type=marker,distance=..3] on passengers as @s[tag=nsajm.the_nun.model,tag=!nsajm.the_nun.model.stunned_by_polaroid,scores={nsajm.the_nun.FLASH_LIMIT=..3}] run function nsajm:the_nun/animations/polaroid.stunned/main
execute on passengers as @s[tag=nsajm.the_nun.model] unless score @s nsajm.the_nun.FLASH_LIMIT matches -2147483648..2147483647 run scoreboard players set @s nsajm.the_nun.FLASH_LIMIT 0

#> Model Animations:
execute as @n[tag=nsajm.the_nun.model,predicate=nsajm:id/main] at @s run function nsajm:the_nun/animations/main

#> Smooth Rotation (By CLOUD WOLF)
execute as @e[tag=nsajm.the_nun.model,predicate=nsajm:id/main] at @s \
    anchored eyes rotated as @n[tag=nsajm.the_nun.entity] \
    positioned ^ ^ ^5 \
    rotated as @s \
    positioned ^ ^ ^10 \
    facing entity @s eyes \
    facing ^ ^ ^-1 \
    positioned as @s \
    run rotate @s ~ 0
