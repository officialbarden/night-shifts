execute store result storage ns:storage TEMP.MACRO.LIGHT.VALUE int 1 run scoreboard players get ALL.LIGHT.LEVEL lights.VALUES
execute if block ~ ~ ~ light run function lights:zprivate/on/fill with storage ns:storage TEMP.MACRO.LIGHT
execute if block ~ ~ ~ waxed_exposed_copper_bulb run function lights:zprivate/on/copper_bulb
