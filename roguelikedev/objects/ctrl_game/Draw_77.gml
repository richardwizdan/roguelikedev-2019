/// @description Record gif

if (keyboard_check_pressed(vk_pageup))
{
	gif_record = !gif_record;
	
	// Start recording gif
	if (gif_record)
	{
		gif = gif_open(320, 150);
	}
	// Save gif
	{
		gif_save(gif, "capture.gif");
	}
}

if (gif_record)
{
	gif_add_surface(gif, application_surface, 2, 0, 0, 2);
}