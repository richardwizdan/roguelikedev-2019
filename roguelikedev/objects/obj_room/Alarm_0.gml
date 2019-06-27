/// @description Generate the room

//----- Update the variables
map_x2 = map_x + rm_width;
map_y2 = map_y + rm_height;
center_x = (map_x / map_x2)/2;
center_y = (map_y / map_y2)/2;

//----- Generate the floor tiles
for (var i = map_x+1; i < map_x+rm_width; i++)
{
	for (var j = map_y+1; j < map_y+rm_height; j++)
	{
		instance_create_layer(i*global.TILE_SIZE, j*global.TILE_SIZE, "Tiles", obj_ground);
	}
}