data modify storage bldp:array_random in set from storage guesstheupdate:temp all.random_item_list
function bldp:func/array/random/init

data modify entity @s item.id set from storage bldp:array_random out
execute if data storage guesstheupdate:temp all.random_item_list[1] run function guesstheupdate:zzz/init/roll_items/remove_item_from_list with storage bldp:array_random

tag @s remove guesstheupdate_hasnt_rolled