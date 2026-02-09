summon armor_stand ~ ~ ~ {attributes:[{id:scale,base:0.9f}], Invisible:true, Tags:["xander.root"], Passengers:[{id:"text_display", text:{"text":"\uE001"}, see_through:true, billboard:"center", background:0}]}
execute rotated ~ 0 run function animated_java:xander/summon {args:{}}
ride @n[tag=aj.xander.root] mount @n[tag=xander.root]


