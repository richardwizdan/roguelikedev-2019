/// @description Control the game

if (game_initialized < 3)
{
	game_initialized++;
}
else
{
	game_initialized = 3;	
}

if (room != rm_init)
{
	switch (game_turn)
	{

		//----- Player's turn
		case game_state.player_turn:

			if (instance_exists(global.PLAYER))
			{

				// Show tiles available for movement
				if (ctrl_game.game_initialized > 2)
				{
					scr_show_movement_range(global.map[global.PLAYER.map_x, global.PLAYER.map_y], global.PLAYER.att_move, global.PLAYER.att_current_actions);
				}
				
				// Movement
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
				scr_reset_tiles();
			
			}
		
			if (global.PLAYER.att_current_actions <= 0)
			{
				game_turn = game_state.enemy_turn;
			}
		
		break; // end of player's turn
	
		//----- Enemies' turn
		case game_state.enemy_turn:
		
			
	
			with (par_enemy)
			{
				// Do nothing, for now
			}
	
			game_turn = game_state.player_turn;
			global.PLAYER.att_current_actions = global.PLAYER.att_actions;
		
		break;

	}
}
