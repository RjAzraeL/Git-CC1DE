function scr_estado()
{
	#region estado
	var valor_seno_real = obj_camara.valor_seno_real;
	if (movimiento_horizontal == 0 and movimiento_vertical == 0)
	{
		estado = "parar";
	}
	if (movimiento_horizontal != 0 and movimiento_vertical == 0)
	{
		estado = "caminar";
	}
	if (movimiento_vertical != 0)
	{
		estado = "saltar";
	}
	switch(estado)
	{
		case("parar"):
		{
			escala_x = 1*ultima_direccion;
			escala_y = 1+.01*valor_seno_real;
			angulo = 0;
			break;
		}
		case("caminar"):
		{
			escala_x = 1*ultima_direccion;
			escala_y = 1+.1*valor_seno_real;
			break;
		}
		case("saltar"):
		{
			escala_x = .8*ultima_direccion;
			escala_y = 1.2;
			break;
		}
	}
	escala_x_real = lerp(escala_x_real, escala_x, .25);
	escala_y_real = lerp(escala_y_real, escala_y, .25);
	angulo = -sign(movimiento_horizontal)*5;
	angulo_real = lerp(angulo_real, angulo, .25);
	#endregion
}

function scr_sprite()
{
	if (movimiento_horizontal > 0)
	{		
		ultima_direccion = sign(movimiento_horizontal);
	}
	if (movimiento_horizontal < 0)
	{
		ultima_direccion = sign(movimiento_horizontal);
	}
}

function scr_sprite_indice()
{
	parpadeo++;
	var _fase = 0;
	if (parpadeo >= parpadeo_total)
	{
		parpadeo = irandom_range(parpadeo_total, round(parpadeo_total/2));
		_fase = 1;
	}
	if (movimiento_horizontal > 0)
	{		
		image_index = indice_der + _fase;
	}
	if (movimiento_horizontal < 0)
	{
		image_index = indice_izq + _fase;
	}
}