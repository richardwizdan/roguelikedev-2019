/// @description Draw the enemy

// Draw enemy only if in player's fov
if (enemy_visible)
{
	// Draw background for ascii
	if (global.graphics_style == 0)
	{
		draw_sprite(bkg_sprite, global.map[map_x, map_y].tile_lit_up, x, y);
	}
	
	draw_sprite(sprite_index, global.graphics_style, x, y);
}