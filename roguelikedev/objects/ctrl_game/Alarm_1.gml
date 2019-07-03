/// @description Create the game map reference

with (par_tile)
{
	var _xx = x / global.TILE_SIZE,
		_yy = y / global.TILE_SIZE;
		
	global.map[_xx, _yy] = id;
}

// Populate tiles' neigbor lists
for (var xx=0; xx<global.MAP_WIDTH; xx++)
{
	for (var yy=0; yy<global.MAP_HEIGHT; yy++)
	{
		
		tile = global.map[xx, yy];
		
		// Add left neighbor
		if (xx > 0)
		{
			ds_list_add(tile.tile_neighbors, global.map[xx-1, yy]);
		}
		
		// Add right neighbor
		if (xx < global.MAP_WIDTH-1)
		{
			ds_list_add(tile.tile_neighbors, global.map[xx+1, yy]);
		}
		
		// Add top neighbor
		if (yy > 0)
		{
			ds_list_add(tile.tile_neighbors, global.map[xx, yy-1]);
		}
		
		// Add bottom neighbor
		if (yy < global.MAP_HEIGHT-1)
		{
			ds_list_add(tile.tile_neighbors, global.map[xx, yy+1]);
		}
		
		// Add top left neighbor
		if (xx > 0 && yy > 0)
		{
			ds_list_add(tile.tile_neighbors, global.map[xx-1, yy-1]);
		}
		
		// Add top right neighbor
		if (xx < global.MAP_WIDTH-1 && yy > 0)
		{
			ds_list_add(tile.tile_neighbors, global.map[xx+1, yy-1]);
		}
		
		// Add bottom left neighbor
		if (xx > 0 && yy < global.MAP_HEIGHT-1)
		{
			ds_list_add(tile.tile_neighbors, global.map[xx-1, yy+1]);
		}
		
		// Add bottom right neighbor
		if (xx < global.MAP_WIDTH-1 && yy < global.MAP_HEIGHT-1)
		{
			ds_list_add(tile.tile_neighbors, global.map[xx+1, yy+1]);
		}
	}
}

with (par_tile)
{
	if (ds_list_size(tile_neighbors) == 0)
	{
		instance_destroy();
	}
}