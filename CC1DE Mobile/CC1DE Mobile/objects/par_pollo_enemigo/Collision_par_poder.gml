#region choque
if (other.bando != bando)
{
	escala_x_real = .75*ultima_direccion;
	escala_y_real = .75;
	movimiento_horizontal_golpe = -other.movimiento_horizontal;
	vida--;
	instance_destroy(other);
}
#endregion