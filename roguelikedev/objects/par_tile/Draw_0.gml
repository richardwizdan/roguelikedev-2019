/// @description Draw the tile

//----- Draw the tile only if it has been seen at least once
if (tile_visible)
{
	draw_sprite(tile_sprite, global.graphics_style+tile_lit_up, x, y);
}