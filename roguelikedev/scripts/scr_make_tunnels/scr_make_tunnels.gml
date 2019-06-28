/// @function scr_make_tunnels
/// @description Connect rooms with tunnels.

var _new_x = 0,
	_new_y = 0,
	_prev_x = 0,
	_prev_y = 0;

_prev_x = rooms[0].center_x;
_prev_y = rooms[0].center_y;

for (var i=1; i<array_length_1d(rooms); i++)
{
	
	if (!rooms[i].is_colliding)
	{
		_new_x = rooms[i].center_x;
		_new_y = rooms[i].center_y;
		
		if (irandom_range(0, 1) == 1)
		{
			scr_create_h_tunnel(_prev_x, _new_x, _new_y);
			scr_create_v_tunnel(_prev_x, _prev_y, _new_y);
			_prev_x = rooms[i].center_x;
			_prev_y = rooms[i].center_y;
		}
		else
		{
			scr_create_v_tunnel(_prev_x, _prev_y, _new_y);
			scr_create_h_tunnel(_prev_x, _new_x, _new_y);
			_prev_x = rooms[i].center_x;
			_prev_y = rooms[i].center_y;
		}
	}
	else
	{
		continue;	
	}
}