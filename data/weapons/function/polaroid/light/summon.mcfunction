summon marker ~ ~ ~ {Tags:["polaroid.light", "new"]}
setblock ~ ~ ~ light[level=15]
scoreboard players set @n[tag=new,tag=polaroid.light,type=marker] polaroid.light.value 15
tag @e[tag=polaroid.light] remove new
