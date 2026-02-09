#> Player Counts:
execute store result score TotalPlayersInWorld game.values if entity @a
execute store result score TotalPlayersQueued game.values if entity @a[tag=game.queued]
execute store result score TotalPlayersInGame game.values if entity @a[tag=game.is_playing]
execute store result score TotalPlayersIsAlive game.values if entity @a[tag=game.is_alive]
execute store result score TotalPlayersIsDead game.values if entity @a[tag=game.is_dead]

