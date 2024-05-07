function scr_disparo(indice)
{
	var tipo = poder_id[indice];
	poder_enfriamiento[indice] = poder_enfriamiento_total[indice];
	var _poder = instance_create_depth(x, y, depth, obj_poder_huevo);
	_poder.movimiento_horizontal = poder_velocidad[indice]*ultima_direccion;
	_poder.bando = bando;
	_poder.tipo = tipo
	_poder.spr_cc1 = poder_sprite1[indice];
	_poder.spr_cc2 = poder_sprite2[indice];
	_poder.spr_cc3 = poder_sprite3[indice];
	escala_y_real = .75;
	escala_x_real = 1.25*ultima_direccion;
	switch(tipo)
	{
		case(poder_quemado):
		{
			_poder.aumento = 0;
			_poder.image_angle = (ultima_direccion == -1) ? 180 : 0;
			_poder.angulo_real = _poder.image_angle;
			break;
		}
		case(poder_helado):
		{
			_poder.traslucido = true;
			break;
		}
		case(poder_oscuro):
		case(poder_toxico):
		{
			_poder.rastro = true;
			break;
		}
		case(poder_mistico):
		{
			_poder.aumento = 0;
			_poder.image_angle = (ultima_direccion == -1) ? 180 : 0;
			_poder.angulo_real = _poder.image_angle;
			_poder.color = true;
			break;
		}
	}
}