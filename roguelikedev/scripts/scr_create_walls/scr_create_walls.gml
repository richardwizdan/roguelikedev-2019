/// @#function scr_create_walls
/// @description Create the walls around ground tiles.

for (var i = 1; i < global.MAP_WIDTH-1; i++)
	{
		for (var j = 1; j < global.MAP_HEIGHT-1; j++)
		{
			
			if (global.map[i, j].tile_name == "Empty")
			{
				if (global.map[i+1, j].tile_name == "Ground" || 
				global.map[i-1, j].tile_name == "Ground" || 
				global.map[i, j-1].tile_name == "Ground" || 
				global.map[i, j+1].tile_name == "Ground" || 
				global.map[i-1, j-1].tile_name == "Ground" ||
				global.map[i-1, j+1].tile_name == "Ground" ||
				global.map[i+1, j-1].tile_name == "Ground" ||
				global.map[i+1, j+1].tile_name == "Ground")
				{
					scr_update_tile(i, j, "Wall", spr_wall_dark, true, true);
				}
			}
			
		}
	}