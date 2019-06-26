/// @function scr_create_v_tunnel(map_x, map_y1, map_y2)
/// @Description Dig a vertical tunnel
/// @param {int} map_x x coordinate of the tunnel.
/// @param {int} map_y1 y coordinate of the end of the tunnel.
/// @param {int} map_y2 y coordinate of the end of the tunnel.

var _map_x = argument0,
	_map_y1 = argument1,
	_map_y2 = argument2;
	
for (var i = min(_map_y1, _map_y2); i < max(_map_y1, _map_y2)+1; i++)
{
	instance_create_layer(_map_x*global.TILE_SIZE, i*global.TILE_SIZE, "Tiles", obj_ground);
}