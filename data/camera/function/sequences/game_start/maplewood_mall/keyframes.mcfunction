gamemode spectator @s
#execute as @s run spectate @n[tag=camera.maplewood_mall]

execute if score @s camera.time matches 1 run title @s times 1s 3s 1s
#execute as @e[tag=camera.maplewood_mall] at @s run particle happy_villager
execute as @e[tag=camera.maplewood_mall] at @s run tp @s ^-0.025 ^ ^


execute if score @s camera.time matches 60 run title @s times 1s 3s 1s
execute if score @s camera.time matches 60 run title @s title {"text":"an Anomaly has been sighted at the abandoned Maplewood Mall", shadow_color:0,font:"start/typewriter"}

execute if score @s camera.time matches 190 run title @s times 0s 2s 0s
execute if score @s camera.time matches 190 run title @s title {"text":"\uE000"}
execute if score @s camera.time matches 200 run function camera:sequences/game_start/maplewood_mall/camera_change/maplewood
execute if score @s camera.time matches 240 run title @s times 0s 3s 1s
execute if score @s camera.time matches 240 run function tl:title {"sound":"nightshifts:sfx.extras.typing master @s ~ ~ ~ 1 1 1","tick":3,"text":"June Ninteenth.","location":"title",args:{font:"retron2000",is_italic:TRUE}}
execute if score @s camera.time matches 300 run function tl:title {"sound":"nightshifts:sfx.extras.typing master @s ~ ~ ~ 1 1 1","tick":3,"text":"12:05 AM","location":"title",args:{font:"retron2000",is_italic:TRUE}}

execute if score @s camera.time matches 460 run title @s clear
execute if score @s camera.time matches 460 run title @s times 1s 7s 2s
execute if score @s camera.time matches 460 run title @s title {"text":"\uE000"}
execute if score @s camera.time matches 600.. run function camera:sequences/game_start/maplewood_mall/end

