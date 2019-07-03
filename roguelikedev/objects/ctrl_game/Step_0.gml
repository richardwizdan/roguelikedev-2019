/// @description Control the game

switch (game_turn)
{

	//----- Player's turn
	case game_state.player_turn:

		// Movement
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
			
			if (global.PLAYER.att_current_actions <= 0)
			{
				game_turn = game_state.enemy_turn;
			}
			
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
