/// @description Game controls

//----- Exit the game
if (key_escape)
{
	game_end();	
}

//----- Restart the room
if (key_restart)
{
	room_restart();
}

//----- DEBUG: Change graphics style
if (key_change_graphics) {
	if (global.graphics_style == 0)
	{
		global.graphics_style = 1;
	}
	else
	{
		global.graphics_style = 0;
	}
}