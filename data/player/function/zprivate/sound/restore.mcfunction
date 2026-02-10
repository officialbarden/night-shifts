
# // Restoring Sound
scoreboard players operation @s sound -= #restoring sound.Values
execute if score @s sound matches ..-1 run scoreboard players set @s sound 0
