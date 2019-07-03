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
	_neighbor,
	_cost_mod,
	_temp_g_score;

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
	for (var ii=0; ii<ds_list_size(_current.tile_neighbors); ii++)
	{
		_neighbor = ds_list_find_value(_current.tile_neighbors, ii);
		
		if (ds_list_find_index(_closed, _neighbor) < 0 &&
		    !_neighbor.tile_block_path &&
			//_neighbor.tile_occupant == noone &&
			_neighbor.tile_move_cost + _current.tile_g_score <= _range)
		{	
			if (ds_priority_find_priority(_open, _neighbor) == 0 || 
			    ds_priority_find_priority(_open, _neighbor) == undefined)
			{
				_cost_mod = 1;
				_neighbor.tile_parent = _current;
				
				// For diagonal tiles
				if (_neighbor.map_x != _current.map_x && _neighbor.map_y != _current.map_y)
				{
					_cost_mod = 1.5;
				}
				
				_neighbor.tile_g_score = _current.tile_g_score + (_neighbor.tile_move_cost * _cost_mod);
				ds_priority_add(_open, _neighbor, _neighbor.tile_g_score);
			}
			else
			{
				_cost_mod = 1;
				
				// For diagonal tiles
				if (_neighbor.map_x != _current.map_x && _neighbor.map_y != _current.map_y)
				{
					_cost_mod = 1.5;
				}
				
				_temp_g_score = _current.tile_g_score + (_neighbor.tile_move_cost * _cost_mod);
				if (_temp_g_score < _neighbor.tile_g_score)
				{
					_neighbor.tile_parent = _current;
					_neighbor.tile_g_score = _temp_g_score;
					show_debug_message(string(_neighbor.tile_g_score));
					ds_priority_change_priority(_open, _neighbor, _neighbor.tile_g_score);
				}
			}
		}
	}
}

with (par_tile)
{
	tile_g_score = floor(tile_g_score);
}

//----- Cleanup
ds_priority_destroy(_open);

//----- Color the tiles for movement
for (var jj=0; jj<ds_list_size(_closed); jj++)
{
	_current = ds_list_find_value(_closed, jj);
	scr_show_move_tiles(_current, argument1, argument2);
}

//----- Cleanup pt.2
ds_list_destroy(_closed);