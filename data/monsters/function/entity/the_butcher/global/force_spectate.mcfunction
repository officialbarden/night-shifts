scoreboard players operation #ID nsajm.ID = @s nsajm.ID
gamemode spectator @s
ride @s mount @n[tag=monsters.the_butcher.player_camera,predicate=nsajm:id/main]

execute at @n[tag=monsters.the_butcher.entity] rotated as @s positioned ^ ^1 ^-3 on vehicle run tp @s ~ ~ ~