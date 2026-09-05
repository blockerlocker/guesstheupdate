data modify storage guesstheupdate:state tick set value none

scoreboard players reset #roll guesstheupdate_anim

execute as @e[type=text_display,tag=guesstheupdate_item_holder] run data merge entity @s {text:{color:white}}

data merge entity @n[type=text_display,tag=guesstheupdate_submit_text] {text:{color:white}}
data merge entity @n[type=text_display,tag=guesstheupdate_submit_background] {text:{sprite:'widget/button'}}

execute as @a run attribute @s entity_interaction_range modifier remove guesstheupdate:entity_reach

execute as @e[type=item_display,tag=guesstheupdate_item_holder] run data modify entity @s Pos set from entity @s data.origin
execute as @e[type=item_display,tag=guesstheupdate_item_holder] run data modify entity @s data.last_pos set from entity @s data.origin

kill @e[type=text_display,tag=guesstheupdate_corrected_answer_text]

tag @e[type=item_display,tag=guesstheupdate_held_item] remove guesstheupdate_held_item
tag @e[type=item_display,tag=guesstheupdate_held_item_check] remove guesstheupdate_held_item_check
tag @e[tag=guesstheupdate_item_hover] remove guesstheupdate_item_hover
tag @e[tag=guesstheupdate_item_hover_check] remove guesstheupdate_item_hover_check
tag @e[tag=guesstheupdate_submit_hover] remove guesstheupdate_submit_hover
tag @e[tag=guesstheupdate_submit_hover_check] remove guesstheupdate_submit_hover_check
tag @e[tag=guesstheupdate_correct_answer] remove guesstheupdate_correct_answer