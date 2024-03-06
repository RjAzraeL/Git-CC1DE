#region ángulo
angulo_real_visual = 90;
if (scr_existe(objetivo))
{
	if (distance_to_object(objetivo) < 96)
	{
		angulo_real_visual = point_direction(x, y, objetivo.x, objetivo.y);
	}
}
var _diff = angle_difference(angulo_real_visual, angulo_real);
angulo_real += _diff * 0.25;
#endregion