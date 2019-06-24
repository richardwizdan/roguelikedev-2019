/// @description Initialize level layout

if (room != rm_init)
{
	
	// Initialize empty map
	scr_initialize_game_world();
	
	// Create sample room
	scr_create_room(5, 5, 15, 10);
	scr_create_walls();
	
	// Create the player
	global.PLAYER = instance_create_layer(10*global.TILE_SIZE,10*global.TILE_SIZE, "Actors", obj_player);
	global.PLAYER.map_x = 10;
	global.PLAYER.map_y = 10;
	
}