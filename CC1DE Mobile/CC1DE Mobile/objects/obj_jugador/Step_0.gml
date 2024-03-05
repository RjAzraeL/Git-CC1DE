#region tecla
var tecla_izquierda_activa = keyboard_check(tecla_izquierda) or btn_izq;
var tecla_izquierda_presionada = keyboard_check_pressed(tecla_izquierda);
var tecla_derecha_activa = keyboard_check(tecla_derecha) or btn_der;
var tecla_derecha_presionada = keyboard_check_pressed(tecla_derecha);
var tecla_salto_activa = keyboard_check(tecla_salto);
var tecla_salto_presionada = keyboard_check_pressed(tecla_salto);
var tecla_disparo_activa = keyboard_check(tecla_disparo);
var tecla_disparo_presionada = keyboard_check_pressed(tecla_disparo);
var tecla_estilo_activa = keyboard_check(tecla_estilo);
#endregion
#region movimiento
#region gravedad
if (!place_meeting(x,y+1,par_solido))
{
	movimiento_vertical += gravedad;
}
else
{
	movimiento_vertical = 0;
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
if (tecla_salto_activa and place_meeting(x, y+1, par_solido) and !place_meeting(x,y-salto,par_solido) and !nivel_ganado)
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
	var _trampolin = instance_place(x, y, obj_trampolin);
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
if (poder_enfriamiento > 0)
{
	poder_enfriamiento--;
}
else if (tecla_disparo_activa and !nivel_ganado)
{
	poder_enfriamiento = poder_enfriamiento_total;
	var _poder = instance_create_depth(x, y, depth, obj_poder_huevo);
	_poder.movimiento_horizontal = poder_velocidad*ultima_direccion;
	_poder.bando = bando;
	escala_y_real = .75;
	escala_x_real = 1.25*ultima_direccion;
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