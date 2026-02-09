spectate @n[sort=random,tag=camera.MENU]

execute if predicate camera:space run title @s times 0 80 40
execute if predicate camera:space run tag @s add camera.pressed_skip
execute if predicate camera:space run scoreboard players reset @s camera.time

execute as @s[tag=camera.pressed_skip] if score @s camera.time matches 120 run title @s times 10 80 40
execute as @s[tag=camera.pressed_skip] if score @s camera.time matches 120 run title @s title {"text":"\uE000"}
execute as @s[tag=camera.pressed_skip] if score @s camera.time matches 200.. run function player_hazmat:utils/spawn
execute as @s[tag=camera.pressed_skip] if score @s camera.time matches 200.. run tp @s 0.35 62.00 -9.30 -0.17 1.35
execute as @s[tag=camera.pressed_skip] if score @s camera.time matches 200.. run title @s clear
execute as @s[tag=camera.pressed_skip] if score @s camera.time matches 200.. run tag @s remove camera.viewing_sequence
execute as @s[tag=camera.pressed_skip] if score @s camera.time matches 200.. run gamemode adventure @s
execute as @s[tag=camera.pressed_skip] if score @s camera.time matches 200.. run stopsound @s * nightshifts:music.main_menu
execute as @s[tag=camera.pressed_skip] if score @s camera.time matches 200.. run return run tag @s remove camera.pressed_skip

execute if score @s[tag=!camera.pressed_skip] camera.time matches 240.. run scoreboard players set @s camera.time 119