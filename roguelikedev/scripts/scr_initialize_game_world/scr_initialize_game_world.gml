/// @function scr_initialize_game_world
/// @description Initialize an empty game map with tiles information.

for (var i = 0; i < global.MAP_WIDTH; i++)
	{
		for (var j = 0; j < global.MAP_HEIGHT; j++)
		{
			scr_add_tile(i, j, "Empty", spr_none, false, false);
		}
	}