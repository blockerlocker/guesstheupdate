function guesstheupdate:end

execute as @a at @s run playsound ui.button.click ui @s ~ ~ ~ 1 1.0

function guesstheupdate:zzz/init/roll_updates
function guesstheupdate:zzz/init/roll_items/main

data modify storage guesstheupdate:state tick set value active

execute as @a run attribute @s entity_interaction_range modifier add guesstheupdate:entity_reach 64 add_value