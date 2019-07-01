/// @description Initialize the game

//----- Game options
global.graphics_style = 0; // 0-ascii 1-custom

//----- Map variables
global.TILE_SIZE = 16;
global.MAP_WIDTH = 80;
global.MAP_HEIGHT = 45;
max_rooms = 30;
room_max_size = 10;
room_min_size = 6;
max_monsters_per_room = 3;

//----- Create the Input controller
instance_create_layer(0, 0, "Instances", ctrl_input);

//----- Game states

enum game_state
{
	player_turn,
	enemy_turn
}

//----- Colors
global.col_red = make_color_rgb(228, 59, 68);
global.col_darkred = make_color_rgb(162, 38, 51);

game_turn = game_state.player_turn;

room_goto_next();