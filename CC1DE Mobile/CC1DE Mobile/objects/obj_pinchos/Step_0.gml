#region colisión
if (place_meeting(x, y + movimiento_vertical, par_solido))
{
	movimiento_vertical *= -1;
}
y += movimiento_vertical;
#endregion