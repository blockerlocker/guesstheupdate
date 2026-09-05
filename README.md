Made for Minecraft 26.3

This data pack adds a game where you have to match 15 random items to one of 3 random game updates. To play, summon the game board, run the start command, and either use left or right click to grab and drop the items. Then hit interact with the Submit Button once every item has been sorted.

This pack is optimized for singleplayer and hasn't been tested in multiplayer. In theory I think it should work but I just literally don't know.

| Command | Description |
| --- | --- |
| `/function guesstheupdate:game_board/summon` | Create the game board at the player's location. Only one game board can exist at a time. |
| `/function guesstheupdate:game_board/resummon` | Re-summon he game board at its current position. This is mostly a debug tool. |
| `/function guesstheupdate:start` | Start the game. |
| `/function guesstheupdate:end` | End the game early with no loss or victory. |
| `/function guesstheupdate:toggle_sub_5_item_updates` | Disable updates that only added 1-4 items to the game. If left enabled like they are by default, duplicate items will appear on the board. |
| `/function guesstheupdate:quickstart` | Immediately start a new game with no rolling animation at the beginning. |