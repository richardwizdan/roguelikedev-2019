/// @description Draw the damage

var _text_width = 8,
	_text_height = string_height(string(damage));

if (enemy_hit)
{
	// Text background
	draw_rectangle_color(x-_text_width, y-_text_height, x+_text_width, y, global.col_red, global.col_red, global.col_red, global.col_red, false);
	// Damage text
	draw_set_font(fnt_10);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(x, y-_text_height, string(damage));
	draw_set_halign(fa_left);
}
else
{
	// Text background
	draw_rectangle_color(x-24, y-_text_height, x+24, y, global.col_darkred, global.col_darkred, global.col_darkred, global.col_darkred, false);
	// Damage text
	draw_set_font(fnt_10);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(x, y-_text_height, "MISS");
	draw_set_halign(fa_left);
}