/// @description Initialize level layout

if (room != rm_init)
{
	
	// Initialize empty map
	for (var i = 0; i < global.MAP_WIDTH; i++)
	{
		for (var j = 0; j < global.MAP_HEIGHT; j++)
		{
			global.map[i, j] = tile.empty;
		}
	}
	
	// Debug room
	scr_create_room(8, 8, 5, 5);
	scr_create_walls();
	
	
	// Create the player
	global.PLAYER = instance_create_layer(10*global.TILE_SIZE,10*global.TILE_SIZE, "Player", obj_player);
	global.PLAYER.map_x = 10;
	global.PLAYER.map_y = 10;
}

