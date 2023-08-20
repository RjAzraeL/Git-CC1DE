///@arg boton
function scrChangeWindow(Boton)
{
	if (keyboard_check_pressed(Boton))
	{
		if (window_get_fullscreen())
		{
			window_set_fullscreen(false);
		}
		else 
		{
			window_set_fullscreen(true);
		}
	}
}