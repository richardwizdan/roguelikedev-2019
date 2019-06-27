/// @functions scr_create_room(map_x, map_y, room_width, room_height)
/// @description Create a rectangular room.
/// @param {int} map_x x position on the game map.
/// @param {int} map_y y position on the game map.
/// @param {int} room_width Width of a room.
/// @param {int} room_height Height of a room.

var _map_x = argument0,
	_map_y = argument1,
	_room_width = argument2,
	_room_height = argument3;
	
	
with (instance_create_layer(_map_x, _map_y, "Tiles", obj_room))
{
	map_x = _map_x;
	map_y = _map_y;
	rm_width = _room_width;
	rm_height = _room_height;
}