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

//----- Create the Input controller
instance_create_layer(0, 0, "Instances", ctrl_input);

//----- Gif recording
gif_record = false;
frames_count = 0;
gif_length = 150;

//----- Start the game
room_goto_next();