tag @e[type=text_display,tag=guesstheupdate_filled_answer_holder] remove guesstheupdate_filled_answer_holder
execute as @e[type=text_display,tag=guesstheupdate_answer_holder] at @s if entity @e[type=item_display,tag=guesstheupdate_item_holder,distance=..0.5] run tag @s add guesstheupdate_filled_answer_holder

execute if entity @e[type=text_display,tag=guesstheupdate_answer_holder,tag=!guesstheupdate_filled_answer_holder] run return fail
return 1