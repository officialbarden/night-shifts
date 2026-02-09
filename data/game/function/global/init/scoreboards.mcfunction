#> Very Important Scoreboard
scoreboard objectives add game.values dummy
scoreboard players set intermission game.values 600

#> Extra Scoreboards
scoreboard objectives add player.sanity dummy
scoreboard objectives add player.alone_timer dummy

#> Trigger Commands
scoreboard objectives add join-queue trigger
scoreboard players enable @a join-queue
scoreboard objectives add set-afk trigger
scoreboard players enable @a set-afk
scoreboard objectives add settings trigger
scoreboard players enable @a settings
scoreboard objectives add player-stats trigger
scoreboard players enable @a player-stats

#> Stats scoreboards
scoreboard objectives add stats.playtime minecraft.custom:minecraft.play_time
scoreboard objectives add stats.total_money_earned dummy
scoreboard objectives add stats.total_money_spent dummy
scoreboard objectives add stats.total_games_played dummy
scoreboard objectives add stats.total_games_completed dummy
scoreboard objectives add stats.total_games_escaped dummy
scoreboard objectives add stats.total_games_failed dummy
scoreboard objectives add stats.total_objectives_completed dummy
scoreboard objectives add stats.total_pictures_taken dummy
scoreboard objectives add stats.total_locations_found dummy
scoreboard objectives add stats.total_cursed.objects_found dummy
