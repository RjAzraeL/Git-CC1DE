#region ángulo
angulo_real += aumento;
#endregion
#region escala
escala_x_real = lerp(escala_x_real, escala_x, .4);
escala_y_real = lerp(escala_y_real, escala_y, .4);
#endregion
#region traslucido
if (traslucido)
{
	image_alpha = 0.25 + abs(control.valor_seno_real)*.5;
}
#endregion
#region color
if (color)
{
	for (var i = 0 ; i < 2; i++)
	{
		colorA[i] = lerp(colorA[i], colorO[i], .2);
	}
	if (colorA[0] <= 36)
	{
		colorO[0] = color1[0];
	}
	if (colorA[0] >= 191)
	{
		colorO[0] = color2[0];
	}
	if (colorA[1] <= 1)
	{
		colorO[1] = color2[1];
	}
	if (colorA[1] >= 190)
	{
		colorO[1] = color2[1];
	}
	image_blend = make_color_rgb(0, colorA[0], colorA[1]);
}
#endregion
#region rastro
if (rastro)
{
	var _rastro = instance_create_depth(x, y + control.valor_seno_real*3, depth + 1 ,obj_efecto);
	_rastro.image_alpha = .5;
	_rastro.spr_cc1 = spr_cc1;
	_rastro.spr_cc2 = spr_cc2;
	_rastro.spr_cc3 = spr_cc3;
}
#endregion
#region posición
x += movimiento_horizontal;
y += movimiento_vertical;
#endregion
#region choque
if (place_meeting(x, y, par_solido) or place_meeting(x, y, objBlockDesert))
{
	instance_destroy();
}
#endregion
#region flama
if (control.zona_actual == zona_volcan)
{
	scr_generar_flama();
}
#endregion