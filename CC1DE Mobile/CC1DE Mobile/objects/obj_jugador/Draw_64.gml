#region dibujar
if (joystick.finger != -1)
{
	draw_sprite(spr_touch_movimiento2 , 0 , joystick.anclaX , joystick.anclaY);
	draw_sprite(spr_touch_movimiento , 0 , joystick.x , joystick.y);
}
draw_sprite(spr_touch_salto, keyboard_check(tecla_salto), 752, 384);
draw_sprite(spr_touch_estilo, keyboard_check(tecla_estilo)+control.estilo_actual*2, 752, 84);
draw_sprite(spr_touch_disparo, keyboard_check(tecla_disparo), 592, 384);
#endregion