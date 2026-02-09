scoreboard players operation #ID mist.ID = @s mist.ID
kill @e[tag=mist.monster,predicate=monsters:id/mist.monster/id]
scoreboard players reset @s mist.ID
scoreboard players set State mist.monster -1
