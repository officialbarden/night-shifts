scoreboard players set @s sound.add 0
function player:zprivate/sound/conditions/movement
function player:zprivate/sound/conditions/items
execute if score @s sound.add matches 1.. run return 1