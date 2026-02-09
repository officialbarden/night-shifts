#> Player gets thrown; Tag gets changed.
tag @s remove nsajm.slasher.victim.caught
tag @s add nsajm.slasher.victim.being_thrown

#> The vehicle the player rides (using pig cuz armor stands are disabled on legitimoose server)
summon pig ~ ~ ~ {Health:1f,Tags:["nsajm.slasher.throw", "new"],DeathLootTable:"",Silent:TRUE,attributes:[{id:"scale",base:0.01}],active_effects:[{id:"invisibility","duration":-1,show_particles:FALSE}]}
execute rotated as @n[tag=nsajm.slasher.model] run rotate @n[tag=nsajm.slasher.throw,tag=new] ~ ~


#> ID system between the pig and the player (to prevent player from dismounting easily)
scoreboard players reset @s nsajm.ID
scoreboard players operation @s nsajm.ID = .global nsajm.ID
scoreboard players operation @n[tag=nsajm.slasher.throw,tag=new] nsajm.ID = .global nsajm.ID
scoreboard players add .global nsajm.ID 1
scoreboard players operation #ID nsajm.ID = @s nsajm.ID

ride @s dismount
ride @s mount @n[tag=nsajm.slasher.throw,predicate=nsajm:id/main]
execute positioned ~ ~ ~ rotated as @n[tag=nsajm.slasher.model] rotated ~ -10 positioned ^ ^ ^1 run function nsajm:slasher/animations/attack/motion
