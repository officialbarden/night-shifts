spectate @n[tag=camera.BLACK_SCREEN]
execute as @s[tag=camera.viewing_sequence] if predicate camera:space run function camera:sequences/introduction/skip


execute if score @s camera.time matches 1 run playsound nightshifts:music.main_menu master @s ~ ~ ~ 1 1 1
execute if score @s camera.time matches 20 run title @s title {"text":"Special Thanks To", font:"start/typewriter", shadow_color:0}
execute if score @s camera.time matches 20 run title @s actionbar {"text":"Press [space] to skip", color:"gray", shadow_color:0}

execute if score @s camera.time matches 100 run title @s title {"text":"Legitimoose", font:"start/typewriter", shadow_color:0}
execute if score @s camera.time matches 180 run title @s title {"text":"LogBog", font:"start/typewriter", shadow_color:0}
execute if score @s camera.time matches 260 run title @s times 10 80 100
execute if score @s camera.time matches 260 run title @s title {"text":"PolishKrowa", font:"start/typewriter", shadow_color:0}

execute if score @s camera.time matches 480 run title @s times 10 40 30
execute if score @s camera.time matches 480 run title @s title {"text":"barden & avivam777 present", font:"start/typewriter", shadow_color:0}

execute if score @s camera.time matches 640 run title @s times 10 80 40
execute if score @s camera.time matches 640 run title @s title {"text":"Night Shifts", font:"start/typewriter", shadow_color:0}

execute if score @s camera.time matches 800 run title @s times 0 80 80
execute if score @s camera.time matches 800 run title @s title {"text":"\uE000"}
execute if score @s camera.time matches 900 run function camera:sequences/main_menu/main
