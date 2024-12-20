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
tiempo_temblor = 0;
tiempo_temblor_tope = 120;
spr_cc1 = scr_pollo_dame_cc1(control.pollo_actual);
spr_cc2 = scr_pollo_dame_ccr(control.pollo_actual);
spr_cc3 = scr_pollo_dame_scc(control.pollo_actual);
sprite_pollo = sprCC1skinPollier;
for (var i = 0; i < 3; i++)
{
	sprite_poder1[i] = scr_dame_dato(control.data_poder, control.poder_id[i], "sprite")[|0];
	sprite_poder2[i] = scr_dame_dato(control.data_poder, control.poder_id[i], "sprite")[|1];
	sprite_poder3[i] = scr_dame_dato(control.data_poder, control.poder_id[i], "sprite")[|2];
}
escala_x_real = 1;
escala_y_real = 1;
angulo_real = 1;
cambio_valor = 0;
cambio_total = 854;
cambio_actual = false;
index_rayo = 0;
cambiando_estilo = false;
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
nombre = scr_dame_dato(control.data_pollo,control.pollo_actual,"nombre")
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
	case(rmZn5Lv1a):
	{
		control.zona_actual = 5;
		break;
	}
	case(rmZn6Lv1a):
	{
		control.zona_actual = 6;
		break;
	}
	case(rmZn7Lv1a):
	{
		control.zona_actual = 7;
		break;
	}
	case(rmZn8Lv1a):
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
temblar = (control.zona_actual == zona_volcan or control.zona_actual == zona_infierno or control.zona_actual == zona_pesadilla) ? true : false;
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