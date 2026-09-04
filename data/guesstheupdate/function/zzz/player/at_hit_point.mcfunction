#$particle witch $(final_x) $(final_y) $(final_z)

$execute positioned $(final_x) $(final_y) $(final_z) as @e[type=text_display,tag=guesstheupdate_item_holder,distance=..1.5] unless score @s guesstheupdate_anim matches 5.. store result entity @s transformation.translation[2] float 0.1 run scoreboard players add @s guesstheupdate_anim 1

$execute positioned $(final_x) $(final_y) $(final_z) as @e[type=text_display,tag=guesstheupdate_item_holder,scores={guesstheupdate_anim=1..}] unless entity @s[distance=..1] store result entity @s transformation.translation[2] float 0.1 run scoreboard players remove @s guesstheupdate_anim 1
