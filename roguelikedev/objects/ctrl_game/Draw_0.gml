/// @description Draw the game world

if (room != rm_init)
{
	for (var i = 0; i < global.MAP_WIDTH; i++)
	{
		for (var j = 0; j < global.MAP_HEIGHT; j++)
		{
			switch (global.map[i, j])
			{
				case tile.empty:
					// do nothing
				break;
				
				case tile.ground:
					draw_sprite(spr_ground, global.graphics_style, i*global.TILE_SIZE, j*global.TILE_SIZE);
				break;
				
				case tile.wall:
					draw_sprite(spr_wall, global.graphics_style, i*global.TILE_SIZE, j*global.TILE_SIZE);
				break;
				
			} // end of switch
			
		} // end of j loop
		
	} // end of i loop
	
} // end of room check