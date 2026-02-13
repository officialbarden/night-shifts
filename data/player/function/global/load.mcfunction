# // Paranoia Meter
# // Scaled (x10)
scoreboard objectives add paranoia dummy
scoreboard players set #from_darkness paranoia 1
scoreboard players set #from_anomalous_event paranoia 10
scoreboard players set #from_dangerous_event paranoia 50

# // Sound Mechanic
scoreboard objectives add sound dummy
scoreboard objectives add sound.add dummy
scoreboard objectives add sound.Values dummy

scoreboard objectives add playerUI.Raycast dummy

scoreboard players set #restoring sound.Values 5
scoreboard players set walking sound.Values 10
scoreboard players set sprinting sound.Values 20
scoreboard players set action sound.Values 40
scoreboard players set RadioNoise sound.Values 50
