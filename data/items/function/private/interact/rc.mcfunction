function weapons:broom/unequip
function weapons:fire_extinguisher/unequip

clear @s poisonous_potato
item replace entity @s hotbar.0 from entity @n[tag=items.model,type=item_display] hotbar.0

