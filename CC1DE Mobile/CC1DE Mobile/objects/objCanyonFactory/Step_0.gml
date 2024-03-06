#region ángulo
_disparar = true;
angulo_real_visual++;
var _diff = angle_difference(angulo_real_visual, angulo_real);
angulo_real += _diff * 0.25;
#endregion
#region disparo
if (disparo > disparo_total and _disparar)
{
	disparo = 0;
	for (var i = 0; i < 4; i++)
	{
		var _bullet = instance_create_depth(x, y, depth, objCanyonBullet);
		_bullet.movimiento_horizontal = lengthdir_x(velocidad, 90*i);
		_bullet.movimiento_vertical = lengthdir_y(velocidad, 90*i);
	}
}
else
{
	disparo++;
}
#endregion