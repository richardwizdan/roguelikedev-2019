/// @function scr_make_map(max_rooms, room_min_size, room_max_size)
/// @description Procedurally generate the game map.
/// @param {int} max_room Maximum number of rooms to be generated.
/// @param {int} room_min_sisze Minimum size of a room in tiles.
/// @param {int} room_max_size Maximum size of a room in tiles.

var _max_rooms = argument0,
	_room_min_size = argument1,
	_room_max_size = argument2,
	_map_x = 0,
	_map_y = 0,
	_rm_width = 0,
	_rm_height = 0,
	_room_id = 0,
	_new_x = 0,
	_new_y = 0,
	_prev_x = 0,
	_prev_y = 0;
	
//----- Initialize the rooms array
for (var i=0; i<_max_rooms; i++)
{
	rooms[i] = noone;
}

for (var r=0; r<_max_rooms; r++)
{
	_rm_width = irandom_range(_room_min_size, _room_max_size);
	_rm_height = irandom_range(_room_min_size, _room_max_size);
	_map_x = irandom_range(0, global.MAP_WIDTH-_rm_width-1);
	_map_y = irandom_range(0, global.MAP_HEIGHT-_rm_height-1);
	
	_room_id = (instance_create_layer(_map_x*global.TILE_SIZE, _map_y*global.TILE_SIZE, "Tiles", obj_room));
	
	with (_room_id)
	{
		map_x = _map_x;
		map_y = _map_y;
		rm_width = _rm_width;
		rm_height = _rm_height;
		rm_name = string(r);
	}
	
	rooms[r] = _room_id;
	show_debug_message("Room " + string(r+1) + " x: " + string(rooms[r].map_x) + " y: " + string(rooms[r].map_y));
	
}

global.PLAYER = instance_create_layer(0 ,0, "Actors", obj_player);