#region agarre
var finger = event_data[?"touch"];
if (finger == joystick.finger)
{
	joystick.x = event_data[?"guiposX"];
	joystick.y = event_data[?"guiposY"];
	
	var distancia = point_distance(joystick.anclaX , joystick.anclaY , joystick.x , joystick.y);
	var angulo = point_direction(joystick.anclaX , joystick.anclaY , joystick.x , joystick.y);
	if (distancia >= joystick.distancia_maxima)
	{
		joystick.x = joystick.anclaX + lengthdir_x(joystick.distancia_maxima, angulo);
		joystick.y = joystick.anclaY + lengthdir_y(joystick.distancia_maxima, angulo);
	}
	// Determinar las direcciones del movimiento basadas en el ángulo
	btn_der = 0;
	btn_izq = 0;
	if (distancia >= 24)
	{
		if (angulo > 22.5 && angulo <= 67.5)
		{
			btn_der = 1;
		}
		else if (angulo > 67.5 && angulo <= 112.5)
		{
		}
		else if (angulo > 112.5 && angulo <= 157.5)
		{
			btn_izq = 1;
		}
		else if (angulo > 157.5 && angulo <= 202.5)
		{
			btn_izq = 1;
		}
		else if (angulo > 202.5 && angulo <= 247.5)
		{
			btn_izq = 1;
		}
		else if (angulo > 247.5 && angulo <= 292.5)
		{
		}
		else if (angulo > 292.5 && angulo <= 337.5)
		{
			btn_der = 1;
		}
		else
		{
			btn_der = 1;
		}
	}
}
#endregion