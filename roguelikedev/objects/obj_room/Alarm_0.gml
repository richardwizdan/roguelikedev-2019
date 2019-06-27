/// @description Generate the room

//----- Update the variables
map_x2 = map_x + rm_width;
map_y2 = map_y + rm_height;
center_x = (map_x / map_x2)/2;
center_y = (map_y / map_y2)/2;

//----- Generate the floor tiles if not colliding with any existing tiles
for (var i=0; i<rm_width; i++)
{
	for (var j=0; j<rm_height; j++)
	{
		if (place_meeting(x+i*global.TILE_SIZE, y+j*global.TILE_SIZE, par_tile))
		{
			is_colliding = true;	
		}
		else
		{
			is_colliding = false;	
		}
	}
}

if (!is_colliding)
{
	for (var i = map_x+1; i < map_x+rm_width; i++)
	{
		for (var j = map_y+1; j < map_y+rm_height; j++)
		{
			instance_create_layer(i*global.TILE_SIZE, j*global.TILE_SIZE, "Tiles", obj_ground);
		}
	}
}