#region ángulo
angulo_real += 10;
#endregion
#region escala
escala_x_real = lerp(escala_x_real, escala_x, .25);
escala_y_real = lerp(escala_y_real, escala_y, .25);
#endregion
#region posición
x += movimiento_horizontal;
y += movimiento_vertical;
#endregion
#region choque
if (place_meeting(x, y, par_solido))
{
	instance_destroy();
}
#endregion