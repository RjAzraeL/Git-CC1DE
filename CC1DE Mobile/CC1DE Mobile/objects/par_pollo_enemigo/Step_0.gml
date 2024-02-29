#region movimiento
#region colisión
#region horizontal
if (place_meeting(x + movimiento_horizontal, y, par_solido))
{
	while(!place_meeting(x + sign(movimiento_horizontal), y, par_solido))
	{
		x += sign(movimiento_horizontal);
	}
	movimiento_horizontal = -movimiento_horizontal;
}
if (!place_meeting(x+anchura*sign(movimiento_horizontal), y+altura, par_solido))
{
	movimiento_horizontal = -movimiento_horizontal;
}
#endregion
#endregion
#region posición
x = clamp(x + movimiento_horizontal, 0, room_width);
y = clamp(y + movimiento_vertical, 16, room_height+32);
#endregion
#endregion
#region disparo
if (poder_disparo)
{
	if (poder_enfriamiento > 0)
	{
		poder_enfriamiento--;
	}
	else
	{
		poder_enfriamiento = poder_enfriamiento_total;
		var _poder = instance_create_depth(x, y, depth, poder_disparo_objeto);
		var _signo = ultima_direccion;
		_poder.movimiento_horizontal = poder_velocidad*_signo;
		_poder.bando = bando;
		if (poder_disparo_doble)
		{
			_poder = instance_create_depth(x, y, depth, poder_disparo_objeto);
			_signo *= -1;
			_poder.movimiento_horizontal = poder_velocidad*_signo;
			_poder.bando = bando;
			escala_x_real = 1.25*ultima_direccion;
			escala_y_real = .75;
		}
	}
}
#endregion
#region estado
scr_estado();
#endregion
#region sprite
scr_sprite();
#endregion
#region caída
if (y >= room_height+16)
{
	instance_destroy();
}
#endregion
#region vida
if (vida <= 0)
{
	instance_destroy();
}
#endregion