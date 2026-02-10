execute if entity @s[tag=playerUI.ShowIcon] run return fail
title @s times 0.2s 99999s 0.1s
execute if block ~ ~ ~ #doors run return run function player:zprivate/raycast/found {UI: "\uE004"}
function player:zprivate/raycast/found {UI: "\uE001"}
