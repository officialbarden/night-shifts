#execute rotated as @s rotated ~ 0 run tp @n[tag=player_hazmat.model,predicate=player_hazmat:model/id] ^ ^ ^-0.5 ~ 0
ride @n[tag=player_hazmat.model, predicate=player_hazmat:model/id] mount @s
ride @n[tag=player_hazmat_head.model, predicate=player_hazmat:model/id] mount @s
execute rotated as @s run rotate @n[tag=player_hazmat_head.model,predicate=player_hazmat:model/id] ~ ~
execute rotated as @s run rotate @n[tag=player_hazmat.model,predicate=player_hazmat:model/id] ~ 0