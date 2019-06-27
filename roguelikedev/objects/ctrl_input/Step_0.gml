/// @description Game controls

//----- Control the player
if (instance_exists(global.PLAYER))
{
	if (ctrl_input.key_left)
	{
		scr_move_actor(global.PLAYER, -1, 0);
	}
	if (ctrl_input.key_right)
	{
		scr_move_actor(global.PLAYER, 1, 0);
	}
	if (ctrl_input.key_up)
	{
		scr_move_actor(global.PLAYER, 0, -1);
	}
	if (ctrl_input.key_down)
	{
		scr_move_actor(global.PLAYER, 0, 1);
	}
	scr_update_fov();
}

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