#> Weapon IDS:
# 1 -> FIRE_EXTINGUISHER


scoreboard objectives add weapon.config dummy
# 1-> tp, 2-> ride
scoreboard players set weapon.view.mode weapon.config 2


scoreboard objectives add tools.radio.light dummy
scoreboard objectives add tools.spirit_box.light dummy

scoreboard objectives add flashlight.raycast.limit dummy
scoreboard objectives add flashlight.ID dummy
scoreboard players add .global flashlight.ID 1
function weapons:flashlight/light_cast/loop_1t

scoreboard objectives add equipped.weapon.ID dummy
scoreboard objectives add weapon.entity.ID dummy
scoreboard players add .global weapon.entity.ID 1
function weapons:polaroid/loop_0.5t
function weapons:global/loop_1t

#> Predicting Teleportation Method:
scoreboard objectives add VELOCITY.INIT.X dummy
scoreboard objectives add VELOCITY.INIT.Y dummy
scoreboard objectives add VELOCITY.INIT.Z dummy
scoreboard objectives add VELOCITY.INIT dummy
scoreboard objectives add VELOCITY.FINAL dummy

#> Item Specific Scoreboards:
scoreboard objectives add flashlight.TOGGLE dummy

