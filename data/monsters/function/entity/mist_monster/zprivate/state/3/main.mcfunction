#> Mist is Forming.

execute if score GlobalTimer mist.monster >= MistManifestTimer mist.monster as @a run return run function monsters:entity/mist_monster/utils/kill_mist


execute unless score GlobalTimer mist.monster >= MistManifestTimer mist.monster run scoreboard players add GlobalTimer mist.monster 1
execute if score GlobalTimer mist.monster matches ..100 run return fail
execute store result entity @n[tag=mist.monster] transformation.scale[0] float 0.1 run scoreboard players get GlobalTimer mist.monster
execute store result entity @n[tag=mist.monster] transformation.scale[1] float 0.1 run scoreboard players get GlobalTimer mist.monster
execute store result entity @n[tag=mist.monster] transformation.scale[2] float 0.1 run scoreboard players get GlobalTimer mist.monster

