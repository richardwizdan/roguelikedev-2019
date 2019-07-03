/// @description Initialize variables

//----- Sprite variables
tile_sprite = spr_none;
tile_lit_up = 0;
tile_visible = true;

//----- Pathfinding variables
tile_neighbors = ds_list_create();
tile_move_cost = 1;
tile_parent = noone;
tile_g_score = 0;

//----- Other variables
tile_block_path = false;
tile_block_sight = false;
tile_occupant = noone;