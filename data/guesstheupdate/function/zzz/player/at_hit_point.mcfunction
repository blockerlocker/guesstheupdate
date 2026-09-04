#$particle witch $(final_x) $(final_y) $(final_z)

$execute positioned $(final_x) $(final_y) $(final_z) as @e[tag=guesstheupdate_item_holder,distance=..1.5] unless score @s guesstheupdate_anim matches 5.. scoreboard players add @s guesstheupdate_anim 1
$execute positioned $(final_x) $(final_y) $(final_z) as @e[tag=guesstheupdate_item_holder,scores={guesstheupdate_anim=1..}] unless entity @s[distance=..1] run scoreboard players remove @s guesstheupdate_anim 1