execute positioned 0.0 0.0 0.0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["slasher.throw.VECTOR"]}
data modify storage nsajm:storage NSAJM.TEMP.MOTION set from entity @n[tag=slasher.throw.VECTOR] Pos
kill @e[tag=slasher.throw.VECTOR]

data modify entity @n[tag=nsajm.slasher.throw,type=pig] Motion set from storage nsajm:storage NSAJM.TEMP.MOTION

