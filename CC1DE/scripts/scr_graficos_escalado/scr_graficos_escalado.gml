///@arg anchura
///@arg altura
///@arg escalado
function scrGraphicsScale(RES_W , RES_H , RES_SCALE)
{
	var FullScreenValor = window_get_fullscreen();
	
	window_set_size((RES_W * RES_SCALE), (RES_H * RES_SCALE));
	surface_resize(application_surface, (RES_W * RES_SCALE), (RES_H * RES_SCALE));

	display_set_gui_size(RES_W, RES_H);
	display_reset(0, true);
	
	if (FullScreenValor)
	{
		window_set_fullscreen(true);
	}
}