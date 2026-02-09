scoreboard objectives add mist.monster dummy
scoreboard objectives add mist.ID dummy
scoreboard players add .global mist.ID 1

scoreboard players set MistManifestTimer mist.monster 1000
scoreboard players set GlobalTimer mist.monster 0
execute unless score State mist.monster matches -2147483648..2147483647 run scoreboard players set State mist.monster 0
execute unless score TeleportOrRide mist.monster matches -2147483648..2147483647 run scoreboard players set State mist.monster 1

#> Entity has 4 Total States:
# State 0 -> Mist is Manifesting...
# State 1 -> Mist is Finding a Victim...
# State 2 -> Mist has found the Victim and is waiting for a perfect time to attack..
# State 3 -> Mist is Disappearing...
# State -1 -> Mist is Non-Existent

