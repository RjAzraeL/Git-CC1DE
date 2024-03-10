#region dibujar
if (control.zona_actual == zona_fabrica)
{
	longitud = 8;
	orbital += 5;
	if (orbital >= 360)
	{
		orbital = 0;
	}
}
scr_dibujar(spr_cc2, spr_cc1, 32, 32, obj_camara.linea_x, x + lengthdir_x(longitud, orbital), y + lengthdir_y(longitud, orbital));
#endregion









