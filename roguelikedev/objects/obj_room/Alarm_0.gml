/// @description Generate the room

//----- Generate the floor tiles if not colliding with any existing tiles
for (var i=0; i<rm_width; i++)
{
	for (var j=0; j<rm_height; j++)
	{
		if (place_meeting(x+i*global.TILE_SIZE, y+j*global.TILE_SIZE, obj_ground))
		{
			is_colliding = true;	
			break;
		}
		else
		{
			is_colliding = false;	
		}
	}
	
	if (place_meeting(x+i*global.TILE_SIZE, y+j*global.TILE_SIZE, obj_ground))
	{
		is_colliding = true;	
		break;
	}
	else
	{
		is_colliding = false;	
	}
}

if (!is_colliding)
{
	for (var i = map_x+1; i < map_x2; i++)
	{
		for (var j = map_y+1; j < map_y2; j++)
		{
			instance_create_layer(i*global.TILE_SIZE, j*global.TILE_SIZE, "Tiles", obj_ground);
		}
	}
}

//----- Populate the room with monsters
if (!is_colliding)
{
	scr_populate_room();
}
