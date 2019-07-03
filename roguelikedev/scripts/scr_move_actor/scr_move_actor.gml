/// @function scr_move_actor(actor_id, move_x, move_y)
/// @description Move actor on the game map with calculated collisions.
/// @param {real} actor_id The unique instance ID of the actor.
/// @param {int} move_x The amount of tiles to be moved horizontally.
/// @param {int} move_y The amount of tiles to be moved vertically.

var _actor_id = argument0,
	_move_x = argument1,
	_move_y = argument2,
	_target_id = 0;
	
with (_actor_id)
{
	
	// Horizontal collisions
	if (global.map[map_x+_move_x, map_y].tile_block_path ||
	    att_current_actions < global.map[map_x+_move_x, map_y].tile_move_cost)
	{
		_move_x = 0;
	}
	
	// Attack the enemy
	if (instance_place(x + _move_x * global.TILE_SIZE, y, par_enemy))
	{
		_target_id = instance_place(x + _move_x * global.TILE_SIZE, y, par_enemy);
		_move_x = 0;
		scr_attack_melee(_target_id);
	}
	
	// Vertical collisions
	if (global.map[map_x, map_y+_move_y].tile_block_path ||
	    att_current_actions < global.map[map_x, map_y+_move_y].tile_move_cost)
	{
		_move_y = 0;
	}
	
	// Attack the enemy
	if (instance_place(x, y + _move_y * global.TILE_SIZE, par_enemy))
	{
		_target_id = instance_place(x, y + _move_y * global.TILE_SIZE, par_enemy);
		_move_y = 0;
		scr_attack_melee(_target_id);
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

	// Reduce the number of actions
	att_current_actions -= global.map[map_x+_move_x, map_y+_move_y].tile_move_cost;
	
	map_x += _move_x;
	map_y += _move_y;

}