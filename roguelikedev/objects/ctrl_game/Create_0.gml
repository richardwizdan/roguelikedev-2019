/// @description Initialize the game

//----- Game options
global.graphics_style = 0; // 0-ascii 1-custom

//----- Map variables
global.TILE_SIZE = 16;
global.MAP_WIDTH = 80;
global.MAP_HEIGHT = 45;

//----- Create the Input controller
instance_create_layer(0, 0, "Instances", ctrl_input);

room_goto_next();