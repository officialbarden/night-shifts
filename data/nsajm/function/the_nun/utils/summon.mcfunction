# $(variant)

#> Summon Base Entity and Animated Java Rig.
    #> Husk is as big as the Animated Java Rig
    summon husk ~ ~ ~ {CustomName:{"text":"The Nun"},PersistenceRequired:TRUE,Tags:["nsajm.the_nun.entity","new"],DeathLootTable:"",Silent:TRUE,active_effects:[{id:"invisibility",duration:-1,show_particles:FALSE}],attributes:[{id:"attack_damage", base:0},{id:"scale","base":1.35}]}
    execute rotated ~ 0 run function animated_java:the_nun/summon {args:{}}

#> Code that links ANIMATED_JAVA Model and the Entity via Scoreboard ID
    scoreboard players operation @e[tag=nsajm.the_nun.entity,tag=new] nsajm.ID = .global nsajm.ID
    scoreboard players operation @e[tag=nsajm.the_nun.new] nsajm.ID = .global nsajm.ID
    tag @e[tag=nsajm.the_nun.entity,tag=new] remove new
    scoreboard players add .global nsajm.ID 1

#> Add more Tags:
    tag @e[tag=nsajm.the_nun.new] add nsajm.the_nun.model
