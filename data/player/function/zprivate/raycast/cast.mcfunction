scoreboard players remove @s playerUI.Raycast 1
execute if score @s[tag=playerUI.ShowIcon] playerUI.Raycast matches ..0 run return run function player:zprivate/raycast/remove_ui
execute if score @s playerUI.Raycast matches ..0 run return fail

execute if block ~ ~ ~ #player:interactable run return run function player:zprivate/raycast/found {UI: "\uE001"}
execute if entity @n[type=#player:interactable,dx=0] positioned ~-0.25 ~-0.25 ~-0.25 if entity @n[type=#player:interactable,dx=0] run return run function player:zprivate/raycast/found {UI: "\uE001"}

execute if block ~ ~ ~ #player:air positioned ^ ^ ^0.1 run return run function player:zprivate/raycast/cast
execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #player:air unless block ~ ~ ~ #player:interactable run return run function player:zprivate/raycast/remove_ui