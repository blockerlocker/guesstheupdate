data modify storage guesstheupdate:temp all.check_answer set from entity @s data.version
execute store success storage guesstheupdate:temp all.answer_doesnt_match byte 1 run data modify storage guesstheupdate:temp all.check_answer set from entity @n[type=item_display,tag=guesstheupdate_item_holder,distance=..0.5] data.version

execute if data storage guesstheupdate:temp all{answer_doesnt_match:true} run data modify entity @s text.color set value red
execute unless data storage guesstheupdate:temp all{answer_doesnt_match:true} run data modify entity @s text.color set value green
execute unless data storage guesstheupdate:temp all{answer_doesnt_match:true} run tag @s add guesstheupdate_correct_answer

execute unless data storage guesstheupdate:temp all{failure:true} store success storage guesstheupdate:temp all.failure byte 1 if data storage guesstheupdate:temp all{answer_doesnt_match:true}