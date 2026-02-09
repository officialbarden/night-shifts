execute as @s[tag=weapon.hit.cooldown] run return run advancement revoke @s only weapons:weapon
scoreboard players operation #ID weapon.entity.ID = @s weapon.entity.ID
function weapons:zprivate/use
advancement revoke @s only weapons:weapon
