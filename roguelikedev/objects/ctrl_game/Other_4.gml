/// @description Initialize level layout

if (room != rm_init)
{
	
	// Initialize empty map
	scr_initialize_game_world();
	
	// Create sample room
	scr_create_room(20, 15, 10, 15);
	scr_create_room(35, 15, 10, 15);
	scr_create_h_tunnel(25, 40, 23);
	scr_create_walls();
	
	// Create the player
	global.PLAYER = instance_create_layer(0, 0, "Actors", obj_player);
	global.PLAYER.map_x = 40;
	global.PLAYER.map_y = 20;
	
}