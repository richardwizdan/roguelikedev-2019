/// @function scr_reset_tiles()
/// @Description Reset pathfinding data in all tiles.

with (par_tile)
{
	tile_g_score = 0;
	tile_parent = noone;
}