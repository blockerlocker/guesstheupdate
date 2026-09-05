particle witch
tp e09f0de2-b2fe-41d7-b3ba-521f77524495 ~ ~-2.5 ~

tag @e[tag=guesstheupdate_item_holder,tag=!guesstheupdate_hover,distance=..1] add guesstheupdate_hover
tag @e[tag=guesstheupdate_item_holder,tag=guesstheupdate_hover,tag=!guesstheupdate_held_item,distance=1..] remove guesstheupdate_hover

execute as e09f0de2-b2fe-41d7-b3ba-521f77524495 if function guesstheupdate:zzz/player/test_click run function guesstheupdate:zzz/player/click

tp @n[type=item_display,tag=guesstheupdate_held_item] ~ ~ ~0.05

execute as @e[type=item_display,tag=!guesstheupdate_held_item,tag=guesstheupdate_held_item_check] run function guesstheupdate:zzz/held_item/drop

tag @e[type=item_display,tag=guesstheupdate_held_item,tag=!guesstheupdate_held_item_check] add guesstheupdate_held_item_check
tag @e[type=item_display,tag=!guesstheupdate_held_item,tag=guesstheupdate_held_item_check] remove guesstheupdate_held_item_check