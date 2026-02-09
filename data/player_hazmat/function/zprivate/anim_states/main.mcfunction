# Animation States:
# 1 -> Idle
# 2 -> Walking
# 3 -> Sprinting

execute unless predicate player_hazmat:movement/boolean/is_moving run return run function player_hazmat:zprivate/anim_states/state/idle/main
execute if predicate player_hazmat:movement/boolean/is_moving if predicate player_hazmat:movement/boolean/is_sprinting run return run function player_hazmat:zprivate/anim_states/state/sprinting/main
execute if predicate player_hazmat:movement/boolean/is_moving run return run function player_hazmat:zprivate/anim_states/state/walking/main


