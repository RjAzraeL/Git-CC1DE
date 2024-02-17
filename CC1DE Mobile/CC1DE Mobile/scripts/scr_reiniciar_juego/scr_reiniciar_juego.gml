///@arg boton
function scr_reiniciar_juego(Boton)
{
	if (keyboard_check_pressed(Boton))
	{
		game_restart();
	}
}