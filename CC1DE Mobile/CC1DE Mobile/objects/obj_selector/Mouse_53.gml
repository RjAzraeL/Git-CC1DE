#region cambiar
if (mouse_x < room_width/2 - 64 and posicion > 0)
{
	with (obj_selector_nivel)
	{
		valor_x += other.medio*2;
	}
	posicion--;
}
if (mouse_x > room_width/2 + 64 and posicion < total_zonas-1)
{
	with (obj_selector_nivel)
	{
		valor_x -= other.medio*2;
	}
	posicion++;
}
nombre_zona = scr_dame_dato(control.data_zona, posicion, "nombre");
#endregion