#region dibujar fondo
draw_set_color(color_fondo);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(c_white);
for (var i = 0; i < 4; i++)
{
	var _tamano_x = sprite_get_width(fondo_actual[i]);
	var _tope = ceil(room_width/_tamano_x);
	for (var j = 0; j < _tope; j++)
	{
		if (fondo_actual[i] != sin_fondo)
		{
			draw_sprite(fondo_actual[i], 0, _tamano_x*j, 0);
		}
		
	}
}
#endregion