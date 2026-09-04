summon marker ~ ~ ~ {UUID:uuid('f9251945-bce3-42d1-aab0-bf5d0c8d936f')}
execute align xyz run tp f9251945-bce3-42d1-aab0-bf5d0c8d936f ~.5 ~.5 ~

data modify storage guesstheupdate:state all.board_pos set from entity f9251945-bce3-42d1-aab0-bf5d0c8d936f Pos

kill @e[type=text_display,tag=guesstheupdate]

execute at f9251945-bce3-42d1-aab0-bf5d0c8d936f run function guesstheupdate:zzz/entity/board_entities