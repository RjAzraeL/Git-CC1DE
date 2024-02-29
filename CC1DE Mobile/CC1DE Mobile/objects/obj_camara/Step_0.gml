#region linea
if (keyboard_check_pressed(vk_shift) and !cambio_actual)
{
	cambio_actual = true;
}
if (cambio_valor < cambio_total and cambio_actual)
{
	cambio_valor += 2;
	linea_x = scr_x() + cambio_valor;
	if (cambio_valor >= cambio_total)
	{
		
		linea_x = 0;
		with (par_entidad)
		{
			var _aux = spr_cc1;
			spr_cc1 = spr_cc2;
			spr_cc2 = _aux;
		}
		cambio_actual = false;
		cambio_valor = 0;
	}
}
#endregion
#region seno
valor_seno += .2;
if (valor_seno >= 2*pi)
{
	valor_seno = 0;
}
valor_seno_real = sin(valor_seno);
#endregion
#region velocidad y zoom
if (scr_existe(par_pollo_jefe))
{
	zoom_objetivo = 1;
	x += (centro_x - x) * velocidad;
	y += (centro_y - y) * velocidad;
}
else
{
	zoom_objetivo = .5;
	if (instance_exists(obj_jugador))
	{
		x += (obj_jugador.x - x) * velocidad;
		y += (obj_jugador.y - y) * velocidad;
		if (obj_jugador.movimiento_horizontal == 0 and obj_jugador.movimiento_vertical == 0)
		{
			//tiempo_ocio++;
		}
		else
		{
			tiempo_ocio = 0;
		}
	}
	if (tiempo_ocio >= 120)
	{
		tiempo_ocio = 120;
		zoom_objetivo = 1;
	}
}
#endregion
#region camera
zoom = lerp(zoom , zoom_objetivo , .05);
camera_set_view_size(view_camera[0] , control.resolucion_ancho*zoom , control.resolucion_alto*zoom);
#endregion