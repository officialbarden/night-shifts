function weapons:global/teleport/init

scoreboard players operation #ID weapon.entity.ID = @s weapon.entity.ID
tag @s add hands_weapons.model.this
#execute as @p[predicate=weapons:id] at @s if score weapon.view.mode weapon.config matches 1 anchored eyes positioned ^ ^ ^ run tp @e[tag=hands_weapons.model.this,predicate=weapons:id] ~ ~ ~ ~ ~
tag @e[tag=hands_weapons.model.this] remove hands_weapons.model.this
