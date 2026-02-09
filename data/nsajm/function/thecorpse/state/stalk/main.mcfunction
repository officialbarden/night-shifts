effect clear @s slowness
execute on passengers run data modify entity @s view_range set value 2f
execute on passengers facing entity @p eyes run rotate @s ~ 0

execute if entity @p[distance=..5] run function nsajm:thecorpse/state/stalk/approached
