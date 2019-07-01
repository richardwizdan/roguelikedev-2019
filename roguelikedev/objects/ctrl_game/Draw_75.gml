/// @description Record gif

if (gif_record)
{
	
	if (frames_count == 0)
	{
		gif = gif_open(room_width, room_height);
	}
	else if (frames_count < gif_length)
	{
		gif_add_surface(gif, application_surface, 3);
	}
	else
	{
		var _save = gif_save(gif, "roguelikedev_gif.gif");
		frames_count = 0;
		gif_record = false;
		
		if (_save == 0)
		{
			show_debug_message("Gif recording completed!");
		}
		else
		{
			show_debug_message("Something went wrong saving the gif.");
		}
	}
	
	frames_count++;
}