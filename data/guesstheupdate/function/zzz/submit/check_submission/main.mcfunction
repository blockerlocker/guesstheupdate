data modify storage guesstheupdate:state tick set value none

data merge entity @n[type=text_display,tag=guesstheupdate_submit_text] {text:{color:white}}
data merge entity @n[type=text_display,tag=guesstheupdate_submit_background] {text:{sprite:'widget/button'}}

tag @e[type=text_display,tag=guesstheupdate_correct_answer] remove guesstheupdate_correct_answer

execute as @e[type=text_display,tag=guesstheupdate_answer_holder] at @s run function guesstheupdate:zzz/submit/check_submission/as_answer_holder

execute unless data storage guesstheupdate:temp all{failure:true} run function guesstheupdate:zzz/submit/check_submission/victory
execute if data storage guesstheupdate:temp all{failure:true} run function guesstheupdate:zzz/submit/check_submission/failure