function guesstheupdate:zzz/init/roll_updates
function guesstheupdate:zzz/init/roll_items/main

execute as @a at @s run playsound ui.button.click ui @s ~ ~ ~ 1 0.9

execute as @e[type=text_display,tag=guesstheupdate_slot_display] run data merge entity @s {transformation:{translation:[0,-0.6,0.01],scale:[4,4.5,4]}}
execute as @e[type=text_display,tag=guesstheupdate_slot_background] run data merge entity @s {text:{color:green}}

execute as @e[type=item_display,tag=guesstheupdate_item_holder] run data merge entity @s {transformation:{scale:[1.25,1.5,0.01]}}
