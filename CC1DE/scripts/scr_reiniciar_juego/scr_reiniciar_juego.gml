///@arg boton
function scrRestartRoom(Boton)
{
	if (keyboard_check_pressed(Boton))
	{
		room_restart();
	}
}
///@arg boton
function scrRestartGame(Boton)
{
	if (keyboard_check_pressed(Boton))
	{
		game_restart();
	}
}