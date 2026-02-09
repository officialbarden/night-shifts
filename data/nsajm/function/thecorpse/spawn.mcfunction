summon creaking ~ ~100 ~ {Tags:["monster.thecorpse.entity.creaking"],active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Silent:TRUE}
execute as @e[tag=monster.thecorpse.entity.creaking,type=creaking] at @s run tp @s ~ ~-100 ~

execute rotated as @s rotated ~ 0 run function animated_java:thecorpse/summon {args:{}}
ride @n[tag=thecorpse.entity] mount @n[tag=monster.thecorpse.entity.creaking]
