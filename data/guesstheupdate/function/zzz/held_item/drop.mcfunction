execute at @n[type=text_display,tag=guesstheupdate_item_holder,distance=..1] unless entity @e[type=item_display,tag=!guesstheupdate_held_item_check,tag=!guesstheupdate_held_item,distance=..1] run return run function guesstheupdate:zzz/held_item/store_in_slot
data modify entity @s Pos set from entity @s data.last_pos

execute store result storage guesstheupdate:temp all.item_holder_count int 1 at @s if entity @e[type=item_display,tag=guesstheupdate_item_holder,distance=..0.5]
execute if data storage guesstheupdate:temp all{item_holder_count:1} run return fail

function guesstheupdate:zzz/test/pools_empty

tp @s @n[tag=guesstheupdate_empty_pool_holder]