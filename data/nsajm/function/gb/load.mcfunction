scoreboard objectives add nsajm.scoreboard dummy

scoreboard objectives add nsajm.state dummy
#> Values:
# NSAJM.STATE -> 1 = IDLE
# NSAJM.STATE -> 2 = WALKING
# NSAJM.STATE -> 3 = ATTACK

scoreboard objectives add nsajm.ID dummy
scoreboard players add .global nsajm.ID 1
scoreboard objectives add nsajm.the_nun.FLASH_LIMIT dummy

function nsajm:the_nun/entity/loop_30s
function nsajm:gb/loop_1s