scoreboard players set @s sound.add 0
execute if entity @s[predicate=player_hazmat:movement/boolean/is_moving, predicate=!player_hazmat:movement/boolean/is_sprinting] run return run scoreboard players operation @s sound.add += walking sound.Values
execute if entity @s[predicate=player_hazmat:movement/boolean/is_sprinting, predicate=player_hazmat:movement/boolean/is_moving] run return run scoreboard players operation @s sound.add += sprinting sound.Values
