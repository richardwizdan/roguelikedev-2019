/// @function scr_show_movement_range(tile_id, att_move, att_current_actions)
/// @description Show the tiles that are within actor's movement range.
/// @param {real} tile_id Origin node's id
/// @param {int} att_move Actor's movement range
/// @param {int} att_current_actions Actor's remaining actions

var _start = argument0,
	_att_move = argument1,
	_att_current_actions = argument2,
	_open, 
	_closed,
	_range = _att_move * _att_current_actions,
	_current,
	_neighbor;
	
//----- Resert all tiles
scr_reset_tiles();

//----- Create data structures
_open = ds_priority_create();
_closed = ds_list_create();

//----- Add origin tile to the open list
ds_priority_add(_open, _start, _start.tile_g_score);
while (ds_priority_size(_open) > 0)
{
	_current = ds_priority_delete_min(_open);
	ds_list_add(_closed, _current);
	
	// Check all tile's neighbors
	for (var ii=0; ii<ds_list_size(tile_neighbors); ii++)
	{
		_neighbor = ds_list_find_value(_current.tile_neighbors, ii);
	}
}