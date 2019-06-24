/// @description Draw the player

// Draw background for ascii
if (global.graphics_style == 0)
{
	draw_sprite(bkg_sprite, 0, x, y);
}

// Draw the player
draw_sprite(player_sprite, global.graphics_style, x, y);

draw_set_halign(fa_center);
draw_set_font(fnt_10);
draw_text(x, y-10, string(map_x) + "," + string(map_y));