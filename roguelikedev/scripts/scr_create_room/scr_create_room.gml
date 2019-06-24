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
	
for (var i = _map_x; i < _map_x+_room_width; i++)
{
	for (var j = _map_y; j < _map_y+_room_height; j++)
	{
		global.map[i, j] = tile.ground;
	}
}