scoreboard players add #roll guesstheupdate_anim 1

scoreboard players operation #roll_modulo guesstheupdate_anim = #roll guesstheupdate_anim
scoreboard players set #5 guesstheupdate_anim 5
scoreboard players operation #roll_modulo guesstheupdate_anim %= #5 guesstheupdate_anim

execute if score #roll_modulo guesstheupdate_anim matches 0 run function guesstheupdate:zzz/init/roll_updates
execute if score #roll_modulo guesstheupdate_anim matches 1 as @e[type=text_display,tag=guesstheupdate_slot_display] run data merge entity @s {start_interpolation:3,transformation:{translation:[0,-0.5,0.01],scale:[3.8,3.8,3.8]}}

execute if score #roll guesstheupdate_anim matches 59.. run function guesstheupdate:zzz/init/land