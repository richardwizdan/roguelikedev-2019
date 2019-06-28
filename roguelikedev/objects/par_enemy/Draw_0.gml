/// @description Draw the enemy

// Draw background for ascii
if (global.graphics_style == 0)
{
	draw_sprite(bkg_sprite, 0, x, y);
}

// Draw enemy only if in player's fov
if (enemy_visible)
{
	draw_sprite(sprite_index, global.graphics_style, x, y);
}