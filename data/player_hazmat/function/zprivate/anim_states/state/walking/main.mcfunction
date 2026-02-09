#> Prevents Looping.
execute if score @s player_hazmat.ANIMATION_STATE matches 2 run return fail

#> Get Previous State for Smooth Animation Switching:
scoreboard players operation #PREVIOUS_STATE player_hazmat.ANIMATION_STATE = @s player_hazmat.ANIMATION_STATE

#> Was sprinting.
# Was Sprinting:
execute as @s[tag=player_hazmat.walk.left_foot] if score #PREVIOUS_STATE player_hazmat.ANIMATION_STATE matches 3 as @n[tag=player_hazmat.model,predicate=player_hazmat:model/id] run function animated_java:player_hazmat/animations/walk_stop2/tween {to_frame: 1, duration: 3}
execute as @s[tag=player_hazmat.walk.right_foot] if score #PREVIOUS_STATE player_hazmat.ANIMATION_STATE matches 3 as @n[tag=player_hazmat.model,predicate=player_hazmat:model/id] run function animated_java:player_hazmat/animations/walk_stop/tween {to_frame: 1, duration: 3}

#> Animate "Player Model" to be "Walking"
execute as @n[tag=player_hazmat.model,predicate=player_hazmat:model/id] run function animated_java:player_hazmat/animations/walk_start/tween {to_frame: 1, duration: 3}

#> Set animation state; essentially store data on what animation should be/is currently running.
scoreboard players set @s player_hazmat.ANIMATION_STATE 2
