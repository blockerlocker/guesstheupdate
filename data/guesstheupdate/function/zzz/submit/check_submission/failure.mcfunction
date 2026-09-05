title @a times 0.25s 3s 0.25s
title @a title ""
title @a subtitle {text:"You Lost!",color:red}
execute as @a at @s run playsound block.glass.break ui @s

execute store result storage guesstheupdate:temp all.correct_answers int 1 if entity @e[type=text_display,tag=guesstheupdate_correct_answer]

tellraw @a [{text:"< ",color:red},{player:blockerlocker,color:white},{text:" > You failed, but got ",color:red},{storage:"guesstheupdate:temp",nbt:"all.correct_answers",color:yellow,plain:true},{text:" items",color:yellow},{text:" correct.",color:red}]