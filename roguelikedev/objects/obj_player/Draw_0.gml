/// @description Draw the player

// Draw background for ascii
if (global.graphics_style == 0)
{
	draw_sprite(bkg_sprite, 0, x, y);
}

// Draw the player
draw_sprite(player_sprite, global.graphics_style, x, y);