$data modify storage guesstheupdate:temp all.version set value "$(text)"
$data modify storage guesstheupdate:temp all.random_item_list set from storage bldp:registry all.update.item."$(text)"
execute as @e[type=item_display,tag=guesstheupdate_hasnt_rolled,limit=5,sort=random] run function guesstheupdate:zzz/init/roll_items/as_items with storage guesstheupdate:temp all