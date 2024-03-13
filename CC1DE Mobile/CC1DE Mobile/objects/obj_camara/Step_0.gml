#region linea
if (cambio_valor < cambio_total and cambio_actual)
{
	cambio_valor += 10;
	linea_x = scr_x() + cambio_valor;
	if (cambio_valor >= cambio_total)
	{
		
		linea_x = -64;
		control.estilo_viejo = control.estilo_actual;
		control.estilo_actual++;
		if (control.estilo_actual > 2)
		{
			control.estilo_actual = 0;
		}
		cambio_actual = false;
		cambio_valor = 0;
	}
}
#endregion
#region index
index_rayo += .25;
if (index_rayo >= 2)
{
	index_rayo = 0;
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
if (control.zona_actual != zona_fabrica)
{
	if (scr_existe(par_pollo_jefe))
	{
		zoom_objetivo = 1;
		if (instance_exists(obj_jugador))
		{
			x += (obj_jugador.x - x) * velocidad;
			y += (obj_jugador.y - y) * velocidad;
		}
	}
	else
	{
		zoom_objetivo = 1;
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
}
else
{
	zoom_objetivo = 1;
	if (instance_exists(obj_jugador))
	{
		x = centro_x + 148;
		y = centro_y + 72;
	}
}
#endregion
#region camera
zoom = lerp(zoom , zoom_objetivo , .05);
camera_set_view_size(view_camera[0] , control.resolucion_ancho*zoom , control.resolucion_alto*zoom);
#endregion
#region temblor
if (temblar)
{
	tiempo_temblor++;
	if (tiempo_temblor > tiempo_temblor_tope)
	{
		tiempo_temblor = 0;
		tiempo_temblor_tope = irandom_range(60, 300);
		scr_temblor_aplicar(30, 2);
	}
}
#endregion