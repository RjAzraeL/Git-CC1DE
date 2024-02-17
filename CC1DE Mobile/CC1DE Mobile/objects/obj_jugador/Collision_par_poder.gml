#region golpe
if (lastimado_enfriamiento <= 0 and bando != other.bando)
{
	lastimado_enfriamiento = lastimado_enfriamiento_total;
	control.vida--;
	obj_camara.golpeado = lastimado_enfriamiento_total;
	movimiento_vertical = -4;
	escala_x_real = .75*ultima_direccion;
	escala_y_real = .75;
	y--;
}
#endregion