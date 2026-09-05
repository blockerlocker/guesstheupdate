execute summon text_display run data merge entity @s {Tags:[guesstheupdate,guesstheupdate_submit,guesstheupdate_submit_text],text:{text:"Submit",color:white},shadow:true,background:0,transformation:{translation:[0,-0.3125,0.01],scale:[2.5,2.5,2.5]}}

summon text_display ~ ~ ~ {Tags:[guesstheupdate,guesstheupdate_submit,guesstheupdate_submit_background],background:0,transformation:[62.5,0,0,-1.5625,0,6.25,0,-0.9375,0,0,1,0,0,0,0,1],data:{sprite_size:[200,20]},text:{atlas:'gui',sprite:'widget/button'}}

data modify storage guesstheupdate:state all.submit_pos set from entity @n[type=text_display,tag=guesstheupdate_submit_text] Pos
data modify storage guesstheupdate:state all.submit_upper_x set compute default float {type:add,inputs:[{type:storage,storage:"guesstheupdate:state",path:"all.submit_pos[0]"},6]}
data modify storage guesstheupdate:state all.submit_lower_x set compute default float {type:add,inputs:[{type:storage,storage:"guesstheupdate:state",path:"all.submit_pos[0]"},-6]}
data modify storage guesstheupdate:state all.submit_upper_y set compute default float {type:add,inputs:[{type:storage,storage:"guesstheupdate:state",path:"all.submit_pos[1]"},0.6]}
data modify storage guesstheupdate:state all.submit_lower_y set compute default float {type:add,inputs:[{type:storage,storage:"guesstheupdate:state",path:"all.submit_pos[1]"},-0.6]}
