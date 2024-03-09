#region dibujar fondo
estilo = control.estilo_actual;
estilo_viejo = control.estilo_viejo;
color_fondo_actual = color_fondo[estilo];
color_fondo_viejo = color_fondo[estilo_viejo];
var f_a = color_fondo_actual;
var f_v = color_fondo_viejo;

#region color actual
draw_set_color(f_a);
draw_rectangle(obj_camara.linea_x, 0, room_width, room_height, false);
draw_set_color(f_v);
draw_rectangle(0, 0, obj_camara.linea_x, room_height, false);
draw_set_color(c_white);
#endregion
for (var i = 0; i < 4; i++)
{
	fondo_actual[i] = ds_list_find_value(fondo[estilo_viejo], i);
	fondo_viejo[i] = ds_list_find_value(fondo[estilo], i);
	if (control.estilo_actual != 0)
	{
		var _aux = fondo_actual[i];
		fondo_actual[i] = fondo_viejo[i];
		fondo_viejo[i] = _aux;
	}
	fondo2 = sprAtkMask;
	if (fondo_viejo[i] != sin_fondo)
	{
		fondo2 = fondo_viejo[i];
	}
	if (fondo_actual[i] != sin_fondo)
	{
		var _tamano_x = sprite_get_width(fondo_actual[i]);
		var _tamano_y = sprite_get_height(fondo_actual[i]);
		var _tamano_x2 = sprite_get_width(fondo2);
		var _tamano_y2 = sprite_get_height(fondo2);
		var _tamano_yy2 = _tamano_y2/2;
		var _tope = ceil(room_width/_tamano_x);
		for (var j = 0; j <= _tope; j++)
		{
			fondo1 = fondo_actual[i];
			if (control.zona_actual == 0 or control.zona_actual == zona_fabrica)
			{
				var _tope_y = ceil(room_height/_tamano_y);
				for (var k = 0; k <= _tope_y; k++)
				{
					scr_dibujar(fondo1, fondo2, _tamano_x, _tamano_y, obj_camara.linea_x, _tamano_x*j, _tamano_yy2 + _tamano_y*k);
				}
			}
			else
			{
				fondo_posicion[i] += fondo_velocidad[i];
				if (fondo_posicion[i] >= _tamano_x)
				{
					fondo_posicion[i] = 0;
				}
				//scr_dibujar(fondo1, fondo2, _tamano_x, _tamano_y, obj_camara.linea_x, _tamano_x*j, _tamano_yy2);
				scr_dibujar(fondo1, fondo2, _tamano_x, _tamano_y, obj_camara.linea_x, _tamano_x*j+fondo_posicion[i], _tamano_yy2);
				scr_dibujar(fondo1, fondo2, _tamano_x, _tamano_y, obj_camara.linea_x, _tamano_x*j-(_tamano_x)+(fondo_posicion[i]), _tamano_yy2);
				scr_dibujar(fondo1, fondo2, _tamano_x, _tamano_y, obj_camara.linea_x, _tamano_x*j+(_tamano_x)+(fondo_posicion[i]), _tamano_yy2);
			}
		
		}
	}
}
#endregion