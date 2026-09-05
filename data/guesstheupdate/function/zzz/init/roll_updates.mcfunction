data modify storage guesstheupdate:temp all.updates set from storage bldp:registry all.updates_with_items

data modify storage bldp:array_random in set from storage guesstheupdate:temp all.updates
function bldp:func/array/random/init
data modify entity @n[type=text_display,tag=guesstheupdate_slot_display,tag=guesstheupdate_slot_0] text.text set from storage bldp:array_random out
execute as @e[type=text_display,tag=guesstheupdate_answer_holder,tag=guesstheupdate_slot_0] run data modify entity @s data.version set from storage bldp:array_random out
function guesstheupdate:zzz/init/delete_update with storage bldp:array_random

data modify storage bldp:array_random in set from storage guesstheupdate:temp all.updates
function bldp:func/array/random/init
data modify entity @n[type=text_display,tag=guesstheupdate_slot_display,tag=guesstheupdate_slot_1] text.text set from storage bldp:array_random out
execute as @e[type=text_display,tag=guesstheupdate_answer_holder,tag=guesstheupdate_slot_1] run data modify entity @s data.version set from storage bldp:array_random out
function guesstheupdate:zzz/init/delete_update with storage bldp:array_random

data modify storage bldp:array_random in set from storage guesstheupdate:temp all.updates
function bldp:func/array/random/init
data modify entity @n[type=text_display,tag=guesstheupdate_slot_display,tag=guesstheupdate_slot_2] text.text set from storage bldp:array_random out
execute as @e[type=text_display,tag=guesstheupdate_answer_holder,tag=guesstheupdate_slot_2] run data modify entity @s data.version set from storage bldp:array_random out
function guesstheupdate:zzz/init/delete_update with storage bldp:array_random