/// @description DEBUG

var _text = "",
	_text_color = "";

switch (game_turn)
{
	case game_state.player_turn: 
		_text = "PLAYER'S TURN";
		_text_color = global.col_blue;
	break;
	
	case game_state.enemy_turn:
		_text = "ENEMY'S TURN";
		_text_color = global.col_red;
	break;
}

draw_rectangle_color(6, 6, 180, 20, _text_color, _text_color, _text_color, _text_color, false);
draw_set_font(fnt_10);
draw_text(8, 8, _text);