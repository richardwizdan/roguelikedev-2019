/// @function scr_populate_room()
/// @description Put monsters in the room.

var _room_x = 0,
	_room_y = 0,
	_enemy = "";

for (var i=0; i<ctrl_game.max_monsters_per_room; i++)
{
	_room_x = irandom_range(map_x+1, map_x2-1);
	_room_y = irandom_range(map_y+1, map_y2-1);
	
	if (rm_name != "0") // Do not place monsters in the starting room with the player
	{
		if (irandom_range(0, 100) < 80)
		{
			_enemy = obj_orc;
		}
		else
		{
			_enemy = obj_troll;
		}
		with (instance_create_layer(_room_x, _room_y, "Actors", _enemy))
		{
			map_x = _room_x;
			map_y = _room_y;
		}
	}
}