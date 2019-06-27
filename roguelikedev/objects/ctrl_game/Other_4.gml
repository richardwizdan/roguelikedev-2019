/// @description Initialize level layout

if (room != rm_init)
{
	
	// Create empty map filled with Walls
	for (var i=0; i<global.MAP_WIDTH; i++)
	{
		for (var j=0; j<global.MAP_HEIGHT; j++)
		{
			instance_create_layer(i*global.TILE_SIZE, j*global.TILE_SIZE, "Tiles", obj_wall);
		}
	}

	// Create rooms and tunnels
	scr_make_map(max_rooms, room_min_size, room_max_size);
	alarm[0] = 5 // Connect rooms with tunnels
}