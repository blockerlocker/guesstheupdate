execute if entity @s[type=item_display,tag=guesstheupdate_item_hover,tag=!guesstheupdate_item_hover_check] run data merge entity @s {transformation:{scale:[1.5,1.5,0.01]}}
execute if entity @s[type=item_display,tag=!guesstheupdate_item_hover,tag=guesstheupdate_item_hover_check] run data merge entity @s {transformation:{scale:[1,1,0.01]}}

execute if entity @s[type=text_display,tag=guesstheupdate_item_hover,tag=!guesstheupdate_item_hover_check] run data merge entity @s {text:{color:yellow}}
execute if entity @s[type=text_display,tag=!guesstheupdate_item_hover,tag=guesstheupdate_item_hover_check] run data merge entity @s {text:{color:white}}

execute at @s[type=item_display,tag=guesstheupdate_item_hover,tag=!guesstheupdate_item_hover_check] run playsound block.copper_bulb.turn_on ui @a ~ ~ ~ 5 1
execute at @s[type=item_display,tag=!guesstheupdate_item_hover,tag=guesstheupdate_item_hover_check] run playsound block.copper_bulb.turn_off ui @a ~ ~ ~ 5 1

tag @s[tag=guesstheupdate_item_hover,tag=!guesstheupdate_item_hover_check] add guesstheupdate_item_hover_check
tag @s[tag=!guesstheupdate_item_hover,tag=guesstheupdate_item_hover_check] remove guesstheupdate_item_hover_check