/// @function scr_create_h_tunnel(map_x1, map_x2, map_y)
/// @Description Dig a horizontal tunnel
/// @param {int} map_x1 x coordinate of the beginning of the tunnel.
/// @param {int} map_x2 x coordinate of the end of the tunnel.
/// @param {int} map_y y coordinate of the tunnel.

var _map_x1 = argument0,
	_map_x2 = argument1,
	_map_y = argument2;
	
for (var i = min(_map_x1, _map_x2); i < max(_map_x1, _map_x2)+1; i++)
{
	scr_update_tile(i, _map_y, "Ground", spr_ground_dark, false, false);
}