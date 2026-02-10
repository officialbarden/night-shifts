#function weapons:zprivate/use_mode/main
execute if items entity @s weapon.offhand poisonous_potato[custom_data~{weapon:TRUE}] run return run function weapons:zprivate/use_offhand

function weapons:zprivate/unequip
execute if score @s tools.radio.light matches 1.. run function weapons:zprivate/light/radio/main
#execute if score @s tools.spirit_box.light matches 1.. run function weapons:zprivate/light/spirit_box/main
function weapons:zprivate/equip



