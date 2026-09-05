execute as @a at @s run playsound ui.button.click ui @s ~ ~ ~ 1 1.0

data modify storage guesstheupdate:state tick set value roll

scoreboard players reset #roll guesstheupdate_anim

execute as @e[type=text_display,tag=guesstheupdate_item_holder] run data merge entity @s {text:{color:white}}

execute as @a run attribute @s entity_interaction_range modifier add guesstheupdate:entity_reach 64 add_value

execute as @e[type=item_display,tag=guesstheupdate_item_holder] run data modify entity @s Pos set from entity @s data.origin

tag @e[type=item_display,tag=guesstheupdate_held_item] remove guesstheupdate_held_item
tag @e[type=item_display,tag=guesstheupdate_held_item_check] remove guesstheupdate_held_item_check
tag @e[tag=guesstheupdate_hover] remove guesstheupdate_hover
tag @e[tag=guesstheupdate_hover_check] remove guesstheupdate_hover_check