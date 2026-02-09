summon item_display ~ ~ ~ {Tags:["items.main","new"]}
summon item_display ~ ~ ~ {Tags:["items.model","items.model.NO_GLOW","new"],Glowing:FALSE,view_range:2}
summon item_display ~ ~ ~ {Tags:["items.model","items.model.GLOW","new"],Glowing:TRUE,view_range:0.05}
summon interaction ~ ~ ~ {Tags:["items.model","items.INTERACT","new"]}

#> Fire Extinguisher
#item replace entity @n[limit=2,tag=items.model,tag=new,type=item_display] hotbar.0 with poisonous_potato[custom_model_data={floats:[1600]},item_name={"color":"#FF2A00","text":"Fire Extinguisher", "font":"retron2000"},custom_data={weapon:TRUE,weapon_id:1},food={can_always_eat:true,nutrition:0,saturation:0},consumable={animation:"crossbow",consume_seconds:999999}] 1
#> Broom:
item replace entity @n[limit=2,tag=items.model,tag=new,type=item_display] hotbar.0 with poisonous_potato[custom_model_data={floats:[1700]},item_name={"color":"#9E6800","text":"Broom","font":"retron2000"},custom_data={weapon:TRUE,weapon_id:2},food={can_always_eat:true,nutrition:0,saturation:0},consumable={animation:"crossbow",consume_seconds:999999}] 1



execute as @e[tag=items.model,tag=new,type=item_display] run data modify entity @s transformation.translation[1] set value 0.5
execute as @e[tag=items.model,tag=new] run ride @s mount @n[tag=items.main,tag=new]
tag @e[tag=items.model,tag=new] remove new
tag @e[tag=items.main,tag=new] remove new

