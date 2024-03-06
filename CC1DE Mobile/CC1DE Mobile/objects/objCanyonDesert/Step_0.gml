#region ángulo
angulo_real_visual = 90;
var _disparar = false;
if (scr_existe(objetivo))
{
	if (distance_to_object(objetivo) < rango)
	{
		angulo_real_visual = point_direction(x, y, objetivo.x, objetivo.y);
		_disparar = true;
	}
}
var _diff = angle_difference(angulo_real_visual, angulo_real);
angulo_real += _diff * 0.25;
#endregion
#region disparo
if (disparo > disparo_total and _disparar)
{
	disparo = 0;
	var _bullet = instance_create_depth(x, y, depth, objCanyonDesertBullet);
	_bullet.movimiento_horizontal = lengthdir_x(velocidad, angulo_real);
	_bullet.movimiento_vertical = lengthdir_y(velocidad, angulo_real);
}
else
{
	disparo++;
}
#endregion