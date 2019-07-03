/// @description Initialize level layout

if (room != rm_init)
{
	
	// Create empty map filled with Walls
	for (var xx=0; xx<global.MAP_WIDTH; xx++)
	{
		for (var yy=0; yy<global.MAP_HEIGHT; yy++)
		{
			instance_create_layer(xx*global.TILE_SIZE, yy*global.TILE_SIZE, "Tiles", obj_wall);
		}
	}

	// Create rooms and tunnels
	scr_make_map(max_rooms, room_min_size, room_max_size);
	alarm[0] = 5 // Connect rooms with tunnels
}