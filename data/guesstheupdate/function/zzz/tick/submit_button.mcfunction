execute if entity @s[tag=guesstheupdate_submit_text,tag=guesstheupdate_submit_hover,tag=!guesstheupdate_submit_hover_check] run data merge entity @s {text:{color:yellow}}
execute if entity @s[tag=guesstheupdate_submit_text,tag=!guesstheupdate_submit_hover,tag=guesstheupdate_submit_hover_check] run data merge entity @s {text:{color:white}}

execute if entity @s[tag=guesstheupdate_submit_background,type=text_display,tag=guesstheupdate_submit_hover,tag=!guesstheupdate_submit_hover_check] run data merge entity @s {text:{sprite:'widget/button_highlighted'}}
execute if entity @s[tag=guesstheupdate_submit_background,tag=!guesstheupdate_submit_hover,tag=guesstheupdate_submit_hover_check] run data merge entity @s {text:{sprite:'widget/button'}}

execute at @s[tag=guesstheupdate_submit_hover,tag=!guesstheupdate_submit_hover_check] run playsound block.copper_bulb.turn_on ui @a ~ ~ ~ 5 1
execute at @s[tag=!guesstheupdate_submit_hover,tag=guesstheupdate_submit_hover_check] run playsound block.copper_bulb.turn_off ui @a ~ ~ ~ 5 1

tag @s[tag=guesstheupdate_submit_hover,tag=!guesstheupdate_submit_hover_check] add guesstheupdate_submit_hover_check
tag @s[tag=!guesstheupdate_submit_hover,tag=guesstheupdate_submit_hover_check] remove guesstheupdate_submit_hover_check