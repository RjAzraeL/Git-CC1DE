function scr_temblor()
{
	control.temblor_seno += 1;
	if (control.temblor_seno >= pi*2)
	{
		control.temblor_seno = 0;
	}
	if (control.temblor > 0)
	{
		control.temblor--;
		//camera_set_view_pos(view_camera[0], scr_x(), scr_y()+sin(control.temblor_seno)*temblor_intensidad);
		camera_set_view_angle(view_camera[0],sin(control.temblor_seno)*temblor_intensidad);
	}
	else
	{
		camera_set_view_angle(view_camera[0],lerp(camera_get_view_angle(view_camera[0]), 0, .25));
	}
}

function scr_temblor_aplicar(tiempo, intensidad)
{
	control.temblor = tiempo;
	control.temblor_intensidad = intensidad;
}