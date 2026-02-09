summon chest_minecart ~ ~ ~ {DisplayState:{Name:"minecraft:barrier"},Tags:["death.lootbox", "new"], Invulnerable:true,Silent:True,NoGravity:True}
ride @n[tag=death.lootbox,tag=new] mount @n[tag=player_hazmat_animated.new]

setblock 0 300 0 chest{Items:[{Slot:0b,id:"player_head"}]}
item modify block 0 300 0 container.0 {function:"fill_player_head",entity:"this"}
data modify entity @n[tag=death.lootbox] CustomName set from block 0 300 0 Items[0].components."minecraft:profile".name
setblock 0 300 0 air


data modify storage ns:storage TEMP.DEATHLOOTBOX set from entity @s Inventory
data modify entity @n[tag=death.lootbox] Items set from storage ns:storage TEMP.DEATHLOOTBOX
data modify entity @n[tag=death.lootbox] CustomNameVisible set value false
data modify entity @n[tag=death.lootbox] CustomName set value " "
