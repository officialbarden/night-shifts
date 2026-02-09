tag @s remove camera.viewing_cam.BLACK
execute positioned -321 69 -57 align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {teleport_duration:3,Tags:["camera.maplewood_mall"],Rotation:[-90.0f,0.0f]}
execute positioned -321 69 -57 run tp @s ~ ~ ~ -90 0
#execute positioned -321 69 -57 run spectate @n[tag=camera.maplewood_mall] @s

tag @s add camera.viewing_cam.maplewood_mall

