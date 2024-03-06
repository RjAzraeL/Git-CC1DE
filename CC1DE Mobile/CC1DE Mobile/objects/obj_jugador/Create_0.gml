#region variables
event_inherited();
bando = 0;
lastimado_enfriamiento = 0;
lastimado_enfriamiento_total = 60;
vida = 5;
estado = "parado";
parpadeo_total = 120;
parpadeo = 0;
image_speed = 0;
image_index = 0;
movimiento_vertical = 0;
ultima_direccion = 1;
movimiento_horizontal = 0;
gravedad = .25;
velocidad_horizontal = 2.5;
salto = 6;
origen_x = x;
origen_y = y;
nivel_ganado = false;
escala_x = 1;
escala_y = 1;
escala_x_real = 0;
escala_y_real = 0;
angulo = 0;
angulo_real = 0;
spr_cc1 = sprCC1skinPollier;
spr_cc2 = sprCCRskinPollier;
#region controles
joystick = 
{
	finger: -1,
	x:0,
	y:0,
	anclaX:0,
	anclaY:0,
	distancia_maxima:64
}
#endregion

#region poder
poder_velocidad = 5;
poder_enfriamiento = 0;
poder_enfriamiento_total = 60;
#endregion

#region teclado
btn_der = 0;
btn_izq = 0;
tecla_izquierda = vk_left;
tecla_derecha = vk_right;
tecla_salto = vk_up;
tecla_disparo = vk_space;
tecla_estilo = vk_shift;

virtual_key_add(752-64,384-64,128,128, tecla_salto);
virtual_key_add(592-64,384-64,128,128, tecla_disparo);
virtual_key_add(752-64,84-64,128,128, tecla_estilo);
#endregion

#endregion