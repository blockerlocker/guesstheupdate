scoreboard players add #roll guesstheupdate_anim 1

scoreboard players operation #roll_modulo guesstheupdate_anim = #roll guesstheupdate_anim
scoreboard players set #5 guesstheupdate_anim 5
scoreboard players operation #roll_modulo guesstheupdate_anim %= #5 guesstheupdate_anim

execute if score #roll_modulo guesstheupdate_anim matches 0 run function guesstheupdate:zzz/init/roll_0
execute if score #roll_modulo guesstheupdate_anim matches 1 run function guesstheupdate:zzz/init/roll_1

execute if score #roll guesstheupdate_anim matches 59.. run function guesstheupdate:zzz/init/land