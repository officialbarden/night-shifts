execute if entity @s[tag=nsajm.slasher.victim.caught] run return run ride @s mount @n[tag=nsajm.slasher.left_arm]


execute unless entity @s[tag=nsajm.slasher.victim.being_thrown] run return fail
    scoreboard players operation #ID nsajm.ID = @s nsajm.ID
    ride @s mount @n[tag=nsajm.slasher.throw,predicate=nsajm:id/main]
    execute as @e[tag=nsajm.slasher.throw,predicate=nsajm:id/main] at @s unless block ~ ~-0.01 ~ #air run function nsajm:slasher/entity/stun
