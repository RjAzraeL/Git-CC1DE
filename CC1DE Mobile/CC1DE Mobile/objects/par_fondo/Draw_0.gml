#region dibujar fondo
for (var i = 0; i < 4; i++)
{
	for (var j = 0; j < 10; j++)
	{
		draw_sprite(fondo_actual[i], 0, sprite_get_width(fondo_actual[i])*j, 0);
	}
}
#endregion