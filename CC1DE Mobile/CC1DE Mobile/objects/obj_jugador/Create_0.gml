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
ultima_imagen = false;
ultima_dobleimagen = false;
indice_dobleimagen = 0;
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
spr_cc3 = scr_pollo_dame_scc(control.pollo_actual);
spr_cc2 = scr_pollo_dame_ccr(control.pollo_actual);
spr_cc1 = scr_pollo_dame_cc1(control.pollo_actual);
indice = 0;
indice_random = 5;
flama_tiempo = 0;
tengo_flama = (control.pollo_actual == 34);
parpadear = false;
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
poder_id[0] = control.poder_id[0];
poder_id[1] = control.poder_id[1];
poder_id[2] = control.poder_id[2];
for (var i = 0 ; i < 3; i++)
{
	poder_velocidad[i] = scr_dame_dato(control.data_poder, poder_id[i], "velocidad");
	poder_enfriamiento[i] = 0;
	poder_enfriamiento_total[i] = 60;
	poder_sprite1[i] = scr_dame_dato(control.data_poder, poder_id[i], "sprite")[|0];
	poder_sprite2[i] = scr_dame_dato(control.data_poder, poder_id[i], "sprite")[|1];
	poder_sprite3[i] = scr_dame_dato(control.data_poder, poder_id[i], "sprite")[|2];
}
#endregion

#region teclado
btn_der = 0;
btn_izq = 0;
tecla_izquierda = vk_left;
tecla_derecha = vk_right;
tecla_salto = vk_up;
tecla_disparo[0] = ord("Z");
tecla_disparo[1] = ord("X");
tecla_disparo[2] = ord("C");
tecla_estilo = vk_shift;

virtual_key_add(752-64,384-64,128,128, tecla_salto);
virtual_key_add(592-64,384-64,128,128, tecla_disparo[0]);
virtual_key_add(752-64,84-64,128,128, tecla_estilo);
#endregion

#endregion