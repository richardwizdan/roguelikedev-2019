/// @function scr_show_move_tiles(tile_id, att_move, att_actions)
/// @description Color the tiles accordingly to actor's remaining actions.
/// @param {real} tile_id id of the tile to be colored
/// @param {int} att_actions Selected actor's remaining actions

var _tile_id = argument0,
	_att_move = argument1,
	_att_current_actions = argument2;
	
if (_att_current_actions > 1)
{
	/* 
		-------------------------------------------------------------------------------
		There's a redundancy here, but this system is set up so that an actor can move
		multiple squares per in one action. 
	    -------------------------------------------------------------------------------
	*/
	if (_tile_id.tile_g_score > _att_move)
	{
		if (_tile_id.tile_occupant != noone)
		{
			// There's an enemy on the tile
			_tile_id.tile_lit_up = 6;
		}
		else
		{
			// Tile is empty
			_tile_id.tile_lit_up = 4;
		}
	}
	else
	{
		if (_tile_id.tile_occupant != noone)
		{
			// There's an enemy on the tile
			_tile_id.tile_lit_up = 6;
		}
		else
		{
			// Tile is empty
			_tile_id.tile_lit_up = 4;
		}
	}
}
else
{
	if (_tile_id.tile_occupant != noone)
	{
		// There's an enemy on the tile
		_tile_id.tile_lit_up = 6;
	}
	else
	{
		// Tile is empty
		_tile_id.tile_lit_up = 4;
	}
}