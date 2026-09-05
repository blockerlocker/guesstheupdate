playsound block.copper_bulb.turn_on ui @a ~ ~ ~ 5 1

execute unless function guesstheupdate:zzz/test/answers_filled run return run function guesstheupdate:zzz/submit/incomplete
execute if function guesstheupdate:zzz/test/answers_filled run return run function guesstheupdate:zzz/submit/check_submission/main