execute as @a[tag=camera.viewing_cam.BLACK] at @s run spectate @e[limit=1, sort=nearest,tag=camera.BLACK_SCREEN,type=item_display] @s
execute as @a[tag=camera.viewing_cam.maplewood_mall] at @s run spectate @e[limit=1, sort=nearest,tag=camera.maplewood_mall,type=item_display] @s
spectate @s @s
schedule function camera:loop_1t 1s replace
