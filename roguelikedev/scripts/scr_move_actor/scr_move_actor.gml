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
	
	// Horizontal collisions
	if (place_meeting(x + _move_x* global.TILE_SIZE, y, obj_wall))
	{
		_move_x = 0;
	}
	
	// Vertical collisions
	if (place_meeting(x, y + _move_y* global.TILE_SIZE, obj_wall))
	{
		_move_y = 0;
	}

		
	// Stay within the map
	if (x + _move_x* global.TILE_SIZE < 0 || x + _move_x* global.TILE_SIZE > room_width)
	{
		_move_x = 0;
	}
	if (y + _move_y* global.TILE_SIZE < 0 || y + _move_y* global.TILE_SIZE > room_height)
	{
		_move_y = 0;
	}

	map_x += _move_x;
	map_y += _move_y;
}