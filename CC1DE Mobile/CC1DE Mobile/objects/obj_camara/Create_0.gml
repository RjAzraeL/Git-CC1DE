#region variable
actual = control.estilo_actual;
if (actual != 0)
{
	with (par_entidad)
	{
		var _aux = spr_cc1;
		spr_cc1 = spr_cc2;
		spr_cc2 = _aux;
	}
}
sprccr = sprCCRskinPollier;
sprcc1 = sprCC1skinPollier;
sprite_pollo = sprCC1skinPollier;
sprite_poder = sprCC1atkEgg;
escala_x_real = 1;
escala_y_real = 1;
angulo_real = 1;
cambio_valor = 0;
cambio_total = 427;
cambio_actual = false;
velocidad = .1;
zoom = .5;
zoom_objetivo = .5;
tiempo_ocio = 0;
valor_seno = 0;
valor_seno_real = 0;
golpeado = 0;
depth = 150;
centro_x = room_width/2;
centro_y = room_height/2;
linea_y = -1;
linea_x = 0;
#endregion