tag @e[type=text_display,tag=guesstheupdate_empty_pool_holder] remove guesstheupdate_empty_pool_holder
execute as @e[type=text_display,tag=guesstheupdate_pool_holder] at @s unless entity @e[type=item_display,tag=guesstheupdate_item_holder,distance=..0.5] run tag @s add guesstheupdate_empty_pool_holder

execute if entity @e[type=text_display,tag=guesstheupdate_pool_holder,tag=!guesstheupdate_empty_pool_holder] run return fail
return 1