#region tecla
var tecla_izquierda_activa = keyboard_check(tecla_izquierda) or btn_izq;
var tecla_izquierda_presionada = keyboard_check_pressed(tecla_izquierda);
var tecla_derecha_activa = keyboard_check(tecla_derecha) or btn_der;
var tecla_derecha_presionada = keyboard_check_pressed(tecla_derecha);
var tecla_salto_activa = keyboard_check(tecla_salto);
var tecla_salto_presionada = keyboard_check_pressed(tecla_salto);
var tecla_disparo1_activa = keyboard_check(tecla_disparo[0]);
var tecla_disparo1_presionada = keyboard_check_pressed(tecla_disparo[0]);
var tecla_disparo2_activa = keyboard_check(tecla_disparo[1]);
var tecla_disparo2_presionada = keyboard_check_pressed(tecla_disparo[1]);
var tecla_disparo3_activa = keyboard_check(tecla_disparo[2]);
var tecla_disparo3_presionada = keyboard_check_pressed(tecla_disparo[2]);
var tecla_estilo_activa = keyboard_check(tecla_estilo);
#endregion
#region movimiento
#region gravedad
var _gravedad = gravedad;
if (place_meeting(x, y, objWater))
{
	if (movimiento_vertical >= 0)
	{
		movimiento_vertical -= _gravedad;
	}
	else
	{
		movimiento_vertical -= _gravedad/2;
	}
}
else
{
	if (!place_meeting(x,y+1,par_solido))
	{
		movimiento_vertical += _gravedad;
	}
	else
	{
		movimiento_vertical = 0;
	}
}
#endregion
#region horizontal
var direccion_horizontal = tecla_derecha_activa - tecla_izquierda_activa;
movimiento_horizontal = direccion_horizontal * velocidad_horizontal;
if (nivel_ganado)
{
	movimiento_horizontal = velocidad_horizontal;
}
#endregion
#region vertical
if (tecla_salto_activa and (place_meeting(x, y+1, par_solido) or place_meeting(x, y, objWater) or (movimiento_vertical >= 0 and control.zona_actual == zona_fabrica)) and !place_meeting(x,y-salto,par_solido) and !nivel_ganado)
{
	movimiento_vertical = -salto;
}
#endregion
#region colisión
#region horizontal
if (place_meeting(x + movimiento_horizontal, y, par_solido))
{
	while(!place_meeting(x + sign(movimiento_horizontal), y, par_solido))
	{
		x += sign(movimiento_horizontal);
	}
	movimiento_horizontal = 0;
}
#endregion
#region vertical
if (place_meeting(x, y + movimiento_vertical, par_solido))
{
	while(!place_meeting(x, y + sign(movimiento_vertical), par_solido))
	{
		y += sign(movimiento_vertical);
	}
	movimiento_vertical = 0;
}
#endregion
#region corrector
var _aumento = 0;
while (place_meeting(x,y,par_solido) and _aumento < 8)
{
	y--;
	_aumento++;
}
#endregion
#endregion
#region trampolín
if (place_meeting(x, y, par_trampolin))
{
	var _trampolin = instance_place(x, y, par_trampolin);
	if (_trampolin.salto == 0)
	{
		_trampolin.salto = 30;
		movimiento_vertical = -_trampolin.salto_valor;
	}
}
#endregion
#region posición
if (!nivel_ganado)
{
	x = clamp(x + movimiento_horizontal, 16, room_width-16);
}
else
{
	x += movimiento_horizontal;
	if (x >= room_width)
	{
		room_goto_next();
		instance_destroy();
	}
}
y = clamp(y + movimiento_vertical, 16, room_height+32);
#endregion
#endregion
#region disparo
if (poder_enfriamiento[0] > 0)
{
	poder_enfriamiento[0]--;
}
else if (tecla_disparo1_activa and !nivel_ganado)
{
	scr_disparo(0);
}
if (poder_enfriamiento[1] > 0)
{
	poder_enfriamiento[1]--;
}
else if (tecla_disparo2_activa and !nivel_ganado)
{
	scr_disparo(1);
}
if (poder_enfriamiento[2] > 0)
{
	poder_enfriamiento[2]--;
}
else if (tecla_disparo3_activa and !nivel_ganado)
{
	scr_disparo(2);
}
#endregion
#region lastimado
image_alpha = 1;
if (lastimado_enfriamiento > 0)
{
	lastimado_enfriamiento--;
	image_alpha = .25;
}
#endregion
#region estado
scr_estado();
#endregion
#region índice
var _loop = false;
var _speed = .1;
var _limite = sprite_get_number(spr_cc2);
var pollo = control.pollo_actual;
var _retorno = true;
ultima_imagen = false;
ultima_dobleimagen = false;
indice_dobleimagen += .1;
if (indice_dobleimagen >= 1.9)
{
	indice_dobleimagen = 0;
}
if (control.estilo_actual == estilo_cc1)
{
	#region excepciones
	if (pollo == pollo_dinami or pollo == pollo_loko)
	{
		_loop = true;
		_speed = .2;
	}
	#endregion
	if (_loop)
	{
		indice += _speed;
		if (indice >= _limite-.1)
		{
			indice = 0;
		}
	}
	else
	{
		if (indice_random > 0)
		{
			indice_random--;
		}
		else
		{
			indice += _speed;
			if (indice >= _limite-.1)
			{
				indice = 0;
				indice_random = irandom(300);
			}
		}
	}
}
else if (control.estilo_actual == estilo_ccr)
{
	#region excepciones
	if (pollo == pollo_angel or pollo == pollo_warriorSuper)
	{
		ultima_imagen = true;
	}
	if (pollo == pollo_greenVideoInc or pollo == pollo_mali or pollo == pollo_meta or pollo == pollo_snick)
	{
		_retorno = false;
	}
	if (pollo == pollo_electron or pollo == pollo_manic)
	{
		ultima_dobleimagen = true;
	}
	if (pollo == pollo_animatronic or pollo == pollo_easyEast)
	{
		_speed = .05;
	}
	if (pollo == pollo_dinami or pollo == pollo_loko or pollo == pollo_nave or pollo == pollo_shiKen or pollo == pollo_toraishi or pollo == pollo_voltio)
	{
		_speed = .2;
		_loop = true;
	}
	#endregion
	if (_loop)
	{
		indice += _speed;
		if (indice >= _limite-.1)
		{
			indice = 0;
		}
	}
	else
	{
		if (indice_random > 0)
		{
			parpadear = false;
			indice_random--;
		}
		else
		{
			var _factor = (parpadear) ? -1 : 1;
			indice += .25 * _factor;
			if (indice >= _limite-.1-(ultima_imagen*1)-(ultima_dobleimagen*2) and !parpadear)
			{
				if (!_retorno)
				{
					indice = 0;
					indice_random = irandom(300);
				}
				parpadear = true;
			}
			if (indice <= 0 and parpadear)
			{
				parpadear = false;
				indice = 0;
				indice_random = irandom(300);
			}
		}
	}
}
else if (control.estilo_actual == estilo_scc)
{
	if (place_meeting(x, y+2, par_solido))
	{
		if (indice_random > 0)
		{
			indice_random--;
		}
		else
		{
			indice += .1;
			if (indice >= 1.9)
			{
				indice = 0;
				indice_random = irandom(300);
			}
		}
	}
	else
	{
		indice_random = 0;
		indice = 2;
	}
}
#endregion
#region sprite
scr_sprite();
scr_sprite_indice();
#endregion
#region meta
if (scr_existe(obj_meta) and !nivel_ganado)
{
	if (x >= obj_meta.x)
	{
		nivel_ganado = true;
	}
}
if (place_meeting(x, y, objExitFactory) and !nivel_ganado)
{
	nivel_ganado = true;
	room_goto_next();
}
#endregion
#region caída
if (y >= room_height+16)
{
	instance_destroy();
	instance_create_depth(origen_x, origen_y, depth, obj_jugador);
}
#endregion
#region vida
if (control.vida <= 0)
{
	instance_destroy();
	game_restart();
}
#endregion
#region estilo
if (tecla_estilo_activa and !obj_camara.cambio_actual)
{
	obj_camara.cambio_actual = true;
}
#endregion
#region partícula
if (!place_meeting(x, y+4, objWater) and control.flama_tiempo == 0 and tengo_flama)
{
	scr_generar_flama();
}
#endregion