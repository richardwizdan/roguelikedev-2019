/// @function scr_make_walls
/// @description Make walls around the floor.

for (var i=0; i<global.MAP_WIDTH; i++)
{
	for (var j=0; j<global.MAP_HEIGHT; j++)
	{
		if (!place_meeting(i+global.TILE_SIZE, j*global.TILE_SIZE, obj_ground))
		{
			instance_create_layer(i*global.TILE_SIZE, j*global.TILE_SIZE, "Tiles", obj_wall);
		}
	}
}