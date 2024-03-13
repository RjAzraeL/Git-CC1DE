#region dibujar
image_speed = 1;
var _y = 0;
if (obj_camara.cambiando_estilo)
{
	image_speed = 0;
}
if (control.estilo_actual == 2)
{
	_y = obj_camara.valor_seno_real;
	image_speed = .1;
}
if (control.zona_actual == zona_fabrica)
{
	longitud = 8;
	orbital += 5;
	if (orbital >= 360)
	{
		orbital = 0;
	}
}
scr_dibujar(spr_cc2, spr_cc1, 32, 32, obj_camara.linea_x, x + lengthdir_x(longitud, orbital), y + _y + lengthdir_y(longitud, orbital));
#endregion