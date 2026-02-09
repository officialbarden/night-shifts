execute anchored eyes positioned ^ ^ ^ run summon minecraft:item_display ~ ~ ~ {brightness:{sky:15,block:15}, billboard:"vertical", Tags:[mist.monster, new], item: {components: {"minecraft:custom_model_data": {floats: [210001.0f]}, "minecraft:custom_name": {color: "yellow", italic: 0b, text: "nightshifts:item/enemy/mist"}}, count: 1, id: "minecraft:popped_chorus_fruit"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [100.0f, 100.0f, 100.0f], translation: [0.0f, 0.0f, 0.0f]}, view_range:0.05f, interpolation_duration:5, teleport_duration:5}
scoreboard players operation @n[tag=mist.monster,tag=new] mist.ID = .global mist.ID
scoreboard players operation @s mist.ID = .global mist.ID

ride @n[tag=mist.monster,tag=new] mount @s
tag @e[tag=mist.monster,tag=new] remove new
