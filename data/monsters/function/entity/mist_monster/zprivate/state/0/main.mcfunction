#> Mist is Forming.

execute unless score GlobalTimer mist.monster matches ..0 run scoreboard players remove GlobalTimer mist.monster 1
execute if score Level mist.monster matches 3 if score GlobalTimer mist.monster matches ..50 run return fail
execute if score Level mist.monster matches 2 if score GlobalTimer mist.monster matches ..100 run return fail
execute if score Level mist.monster matches 1 if score GlobalTimer mist.monster matches ..150 run return fail

execute store result entity @n[tag=mist.monster] transformation.scale[0] float 0.1 run scoreboard players get GlobalTimer mist.monster
execute store result entity @n[tag=mist.monster] transformation.scale[1] float 0.1 run scoreboard players get GlobalTimer mist.monster
execute store result entity @n[tag=mist.monster] transformation.scale[2] float 0.1 run scoreboard players get GlobalTimer mist.monster

