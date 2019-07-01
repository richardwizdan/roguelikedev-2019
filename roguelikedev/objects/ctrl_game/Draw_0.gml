/// @description DEBUG

var _text = "";

switch (game_turn)
{
	case game_state.player_turn: _text = "PLAYER'S TURN"; break;
	case game_state.enemy_turn: _text = "ENEMY'S TURN"; break;
}

draw_text(0, 0, _text);