#> When timer goes out: Flicker
function lights:zprivate/on/macro2 with storage ns:storage TEMP.MACRO.LIGHT
execute if block ~ ~ ~ light run function lights:zprivate/on/fill with storage ns:storage TEMP.MACRO.LIGHT
execute if block ~ ~ ~ waxed_exposed_copper_bulb run function lights:zprivate/flickering/copper_bulb

scoreboard players reset @s lights.TIMER
