# $(door)
$summon minecraft:block_display ~ ~ ~ {Tags:["door.hinge", "new"],Passengers: [{block_state: {Name: "$(door)", Properties: {facing: "north", half: "lower", hinge: "left", open: "false", powered: "false"}}, id: "minecraft:block_display", transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.99999994f, 0.9999999f], translation: [0.8995117f, -0.99999994f, -0.05f]}}], block_state: {Name: "$(door)", Properties: {facing: "north", half: "upper", hinge: "left", open: "false", powered: "false"}}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.99999994f, 0.9999999f], translation: [0.9f, 0.0f, -0.05f]}}

summon marker ~ ~ ~ {Tags:["door.hinge.main", "new"]}
execute as @e[tag=door.hinge, tag=new] at @s rotated as @s positioned ^ ^ ^0.9 run summon interaction ~ ~ ~ {Tags:["door.handle", "new"],width:0.2f,height:0.1f}

scoreboard players operation @n[tag=door.hinge,tag=new] door.ID = .global door.ID
scoreboard players operation @n[tag=door.hinge.main,tag=new] door.ID = .global door.ID
scoreboard players operation @n[tag=door.handle,tag=new] door.ID = .global door.ID
scoreboard players add .global door.ID 1
tag @e[tag=door.handle] remove new
tag @e[tag=door.hinge] remove new
tag @e[tag=door.hinge.main] remove new
