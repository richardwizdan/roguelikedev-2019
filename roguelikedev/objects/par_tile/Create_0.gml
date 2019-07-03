/// @description Initialize variables

tile_sprite = spr_none;
tile_block_path = false;
tile_block_sight = false;
tile_lit_up = 0;
tile_visible = true;
tile_neighbors = ds_list_create();
tile_occupant = noone;
tile_move_cost = 1;