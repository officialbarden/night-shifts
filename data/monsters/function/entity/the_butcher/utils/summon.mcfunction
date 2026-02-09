summon husk ~ ~ ~ {DeathLootTable:"",Tags:["monsters.the_butcher","monsters.the_butcher.entity", "new"], Silent:True, active_effects:[{id:"invisibility", duration:-1,show_particles:false}], attributes:[{id:"scale", base:1.5}]}
execute rotated ~ 0 run function animated_java:the_butcher/summon {args:{}}
scoreboard players operation @e[tag=monsters.the_butcher,tag=new] nsajm.ID = .global nsajm.ID
scoreboard players add .global nsajm.ID 1

ride @n[tag=monsters.the_butcher.model] mount @n[tag=monsters.the_butcher.entity]
tag @e[tag=monsters.the_butcher,tag=new] remove new

