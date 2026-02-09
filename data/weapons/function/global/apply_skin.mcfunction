return fail
execute as @s[tag=player_default] at @s run loot replace entity @n[distance=..1,tag=aj.global.bone.left_arm.tree.bone] hotbar.0 loot weapons:player/left_arm
execute as @s[tag=player_default] at @s run loot replace entity @n[distance=..1,tag=aj.global.bone.right_arm.tree.bone] hotbar.0 loot weapons:player/right_arm
execute as @s[tag=player_default] at @s run loot replace entity @n[distance=..1,tag=aj.hands_weapons_fireextinguisher.bone.right_arm] hotbar.0 loot weapons:player/right_arm

execute as @s[tag=player_slim] at @s run loot replace entity @n[distance=..1,tag=aj.global.bone.left_arm.tree.bone] hotbar.0 loot weapons:player/left_arm_slim
execute as @s[tag=player_slim] at @s run loot replace entity @n[distance=..1,tag=aj.hands_weapons_broom.bone.right_arm] hotbar.0 loot weapons:player/right_arm_slim
execute as @s[tag=player_slim] at @s run loot replace entity @n[distance=..1,tag=aj.hands_weapons_fireextinguisher.bone.right_arm] hotbar.0 loot weapons:player/right_arm_slim
