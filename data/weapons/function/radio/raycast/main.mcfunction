scoreboard players remove @s raycast 1

execute if score @s raycast matches 1.. if block ~ ~ ~ #weapons:air positioned ^ ^ ^0.1 run return run function weapons:radio/raycast/main
execute if score @s raycast matches 1.. positioned ^ ^ ^ unless block ~ ~ ~ #weapons:air run return run function weapons:radio/raycast/fail
execute if score @s raycast matches ..0 run return run function weapons:radio/raycast/fail
