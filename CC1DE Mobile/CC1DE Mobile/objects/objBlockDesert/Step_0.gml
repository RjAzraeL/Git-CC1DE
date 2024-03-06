#region movimiento
if (place_meeting(x + movimiento_horizontal, y, par_solido))
{
	movimiento_horizontal *= -1;
}
if (place_meeting(x + movimiento_horizontal, y, objBlockDesert))
{
	var _ins = instance_place(x + movimiento_horizontal, y, objBlockDesert);
	movimiento_horizontal *= -1;
	_ins.movimiento_horizontal *= -1;
}
x += movimiento_horizontal;
#endregion
#region salto
if (salto > 0)
{
	cabeza_y = obj_camara.valor_seno_real*2;
	salto--;
}
else
{
	cabeza_y = lerp(cabeza_y, 0, .1);
}
#endregion