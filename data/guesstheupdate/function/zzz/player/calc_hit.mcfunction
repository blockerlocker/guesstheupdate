rotate @s ~ ~ 

data modify storage guesstheupdate:temp all.player_pos set from entity @s Pos
data modify storage guesstheupdate:temp all.diff_z set compute default float {type:sub,left:"guesstheupdate:player/pos_2",right:"guesstheupdate:board/pos_2"}

data modify storage guesstheupdate:temp all.player_rot set from entity @s Rotation
data modify storage guesstheupdate:temp all.player_rot[0] set compute default float {type:mul,inputs:["guesstheupdate:player/rot_0",0.01745329251]}
data modify storage guesstheupdate:temp all.player_rot[1] set compute default float {type:mul,inputs:["guesstheupdate:player/rot_1",-0.01745329251]}

data modify storage guesstheupdate:temp all.diff_x set compute default float {type:mul,inputs:["guesstheupdate:diff_z",{type:div,left:{type:sin,input:"guesstheupdate:player/rot_0"},right:{type:cos,input:"guesstheupdate:player/rot_0"}}]}
data modify storage guesstheupdate:temp all.hypot set compute default float {type:length,inputs:["guesstheupdate:diff_z","guesstheupdate:diff_x"]}
data modify storage guesstheupdate:temp all.diff_y set compute default float {type:mul,inputs:["guesstheupdate:hypot",{type:div,left:{type:sin,input:"guesstheupdate:player/rot_1"},right:{type:cos,input:"guesstheupdate:player/rot_1"}}]}
data modify storage guesstheupdate:temp all.diff_z set compute default float {type:negate,input:"guesstheupdate:diff_z"}

data modify storage guesstheupdate:temp all.final_x set compute default float {type:add,inputs:["guesstheupdate:player/pos_0","guesstheupdate:diff_x"]}
data modify storage guesstheupdate:temp all.final_y set compute default float {type:add,inputs:["guesstheupdate:player/pos_1","guesstheupdate:diff_y"]}
data modify storage guesstheupdate:temp all.final_z set compute default float {type:add,inputs:["guesstheupdate:player/pos_2","guesstheupdate:diff_z"]}

data modify storage guesstheupdate:temp all.final_x set compute default float {type:min,inputs:["guesstheupdate:final_x",{type:add,inputs:["guesstheupdate:board/pos_0",24]}]}
data modify storage guesstheupdate:temp all.final_x set compute default float {type:max,inputs:["guesstheupdate:final_x",{type:add,inputs:["guesstheupdate:board/pos_0",-24]}]}
data modify storage guesstheupdate:temp all.final_y set compute default float {type:min,inputs:["guesstheupdate:final_y",{type:add,inputs:["guesstheupdate:board/pos_1",16]}]}
data modify storage guesstheupdate:temp all.final_y set compute default float {type:max,inputs:["guesstheupdate:final_y",{type:add,inputs:["guesstheupdate:board/pos_1",-16]}]}

data modify storage guesstheupdate:temp all.final_x set string storage guesstheupdate:temp all.final_x 0 -1
data modify storage guesstheupdate:temp all.final_y set string storage guesstheupdate:temp all.final_y 0 -1
data modify storage guesstheupdate:temp all.final_z set string storage guesstheupdate:temp all.final_z 0 -1

execute if entity @s[y_rotation=105..-105] run function guesstheupdate:zzz/player/at_hit_point with storage guesstheupdate:temp all

kill @s