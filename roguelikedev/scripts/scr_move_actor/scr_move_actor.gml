/// @function scr_move_actor(actor_id, move_x, move_y)
/// @description Move actor on the game map with calculated collisions.
/// @param {real} actor_id The unique instance ID of the actor.
/// @param {int} move_x The amount of tiles to be moved horizontally.
/// @param {int} move_y The amount of tiles to be moved vertically.

var _actor_id = argument0,
	_move_x = argument1,
	_move_y = argument2;
	
with (_actor_id)
{
	
	if (map_x != 0 && map_x < global.MAP_WIDTH-2 && map_y != 0 && map_y < global.MAP_HEIGHT-2)
	{
		// Horizontal collisions
		if (global.map[map_x+_move_x, map_y].tile_block_path == true)
		{
			_move_x = 0;
		}
	
		// Vertical collisions
		if (global.map[map_x, map_y+_move_y].tile_block_path == true)
		{
			_move_y = 0;
		}
	}
		
	// Stay within the map
	if (map_x == 0 && _move_x < 0)
	{
		_move_x = 0;
	}
	if (map_x >= global.MAP_WIDTH-1 && _move_x > 0)
	{
		_move_x = 0;
	}
	if (map_y == 0 && _move_y < 0)
	{
		_move_y = 0;
	}
	if (map_y >= global.MAP_HEIGHT-1 && _move_y > 0)
	{
		_move_y = 0;
	}

	map_x += _move_x;
	map_y += _move_y;
}