#$execute on passengers as @s[tag=hands_weapons.model] on passengers as @s[tag=aj.hands_tools_radio.bone.screen] run data modify entity @s brightness set value {sky:$(VALUE),block:$(VALUE)}
$execute as @n[predicate=weapons:id,tag=hands_weapons.model] on passengers as @s[tag=aj.hands_tools_radio.bone.screen] run data modify entity @s brightness set value {sky:$(VALUE),block:$(VALUE)}

