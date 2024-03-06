#region variable
actual = control.estilo_actual;
if (actual != 0)
{
	with (par_entidad)
	{
		//var _aux = spr_cc1;
		//spr_cc1 = spr_cc2;
		//spr_cc2 = _aux;
	}
}
sprccr = sprCCRskinPollier;
sprcc1 = sprCC1skinPollier;
sprite_pollo = sprCC1skinPollier;
sprite_poder1 = sprCC1atkEgg;
sprite_poder2 = sprCCRatkEgg;
escala_x_real = 1;
escala_y_real = 1;
angulo_real = 1;
cambio_valor = 0;
cambio_total = 854;
cambio_actual = false;
index_rayo = 0;
velocidad = .1;
zoom = 1;
zoom_objetivo = 1;
tiempo_ocio = 0;
valor_seno = 0;
valor_seno_real = 0;
golpeado = 0;
depth = 150;
centro_x = room_width/2;
centro_y = room_height/2;
linea_y = 0;
linea_x = -64;
#endregion
#region elegir zona
switch (room)
{
	case(rmZn0Home):
	{
		control.zona_actual = 0;
		break;
	}
	case(rmZn1Lv1a):
	{
		control.zona_actual = 1;
		break;
	}
	case(rmZn2Lv1a):
	{
		control.zona_actual = 2;
		break;
	}
	case(rmZn3Lv1a):
	{
		control.zona_actual = 3;
		break;
	}
	case(rmZn4Lv1a):
	{
		control.zona_actual = 4;
		break;
	}
	case(rmZn5Lv0):
	{
		control.zona_actual = 5;
		break;
	}
	case(rmZn6Lv0):
	{
		control.zona_actual = 6;
		break;
	}
	case(rmZn7Lv0):
	{
		control.zona_actual = 7;
		break;
	}
	case(rmZn8Lv0):
	{
		control.zona_actual = 8;
		break;
	}
	case(rmZnfLv1a):
	{
		control.zona_actual = 9;
		break;
	}
}
#endregion
#region crear capa de fondo
var capa_fondo = layer_create(550, "fondo");
instance_create_layer(0, 0, capa_fondo, par_fondo);
with (obj_solido)
{
	scr_estilo_bloque();
}
with (obj_enemigo_pastipollo)
{
	scr_estilo_enemigo1();
}
with (obj_enemigo_cespipollo)
{
	scr_estilo_enemigo2();
}
with (obj_enemigo_jefe_campo)
{
	scr_estilo_jefe();
}
#endregion