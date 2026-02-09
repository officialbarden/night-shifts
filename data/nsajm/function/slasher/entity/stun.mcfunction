scoreboard players operation #ID nsajm.ID = @s nsajm.ID

ride @p[predicate=nsajm:id/main] dismount
#effect give @p[predicate=nsajm:id/main] blindness 5 4 true
effect give @p[predicate=nsajm:id/main] slowness 5 4 true
damage @p[predicate=nsajm:id/main] 10
tag @p[predicate=nsajm:id/main] remove nsajm.slasher.victim.being_thrown
playsound minecraft:entity.generic.big_fall master @a ~ ~ ~ 1 0.8


scoreboard players reset @p[predicate=nsajm:id/main] nsajm.ID
kill @s