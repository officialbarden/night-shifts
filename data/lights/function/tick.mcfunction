return fail
execute as @e[tag=map.maplewood_mall.light,type=marker] at @s if score @s lights.STATE matches 0 if block ~ ~ ~ light run fill ~1 ~ ~1 ~-1 ~ ~-1 light[level=0] replace light
execute as @e[tag=map.maplewood_mall.light,type=marker] at @s if score @s lights.STATE matches 0 if block ~ ~ ~ waxed_exposed_copper_bulb run setblock ~ ~ ~ waxed_exposed_copper_bulb[lit=false]

execute as @e[tag=map.maplewood_mall.light,type=marker,tag=!flickering] at @s if score @s lights.STATE matches 1 run playsound nightshifts:sfx.extras.led ambient @a ~ ~ ~ 0.025 1


execute as @e[tag=map.maplewood_mall.light,type=marker] at @s if score @s lights.STATE matches 1 run function lights:main
schedule function lights:tick 1t replace