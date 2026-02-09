execute on vehicle run effect clear @s speed
playsound nightshifts:sfx.extras.horror_screech.stop master @a[tag=being_chased] ~ ~ ~ 1 1 1
stopsound @a * nightshifts:sfx.extras.horror_screech.loop
tag @a remove being_chased
scoreboard players reset @s nsajm.state
