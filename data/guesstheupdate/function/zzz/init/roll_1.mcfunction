execute as @e[type=text_display,tag=guesstheupdate_slot_display] run data merge entity @s {start_interpolation:0,transformation:{translation:[0,-0.5,0.01],scale:[3.8,3.8,3.8]}}
execute as @e[type=text_display,tag=guesstheupdate_slot_background] run data merge entity @s {start_interpolation:5,text:{color:aqua}}
execute as @e[type=item_display,tag=guesstheupdate_item_holder] run data merge entity @s {start_interpolation:0,transformation:{scale:[1,1,0.01],left_rotation:[0,1,0,0],translation:[0,0,0.05]}}
