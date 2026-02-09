stopsound @s * nightshifts:music.main_menu

tellraw @s {text:"| Intro Scene Skipped.",color:"gray"}
tp @s 0.35 62.00 -9.30 -0.17 1.35
title @s clear
tag @s remove camera.viewing_sequence
tag @s remove camera.pressed_skip
scoreboard players reset @s camera.time
function player_hazmat:utils/spawn

gamemode adventure @s