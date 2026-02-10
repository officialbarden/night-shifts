execute unless function player:zprivate/sound/add run function player:zprivate/sound/restore
execute if score @s sound.add matches 1.. run return run scoreboard players operation @s sound = @s sound.add
