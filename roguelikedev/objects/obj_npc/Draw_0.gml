/// @description Draw Npc

// Draw background for ascii
if (global.graphics_style == 0)
{
	draw_sprite(spr_bg_dark, 0, x, y);
}

// Draw the player
draw_sprite(spr_npc, global.graphics_style, x, y);