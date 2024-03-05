#region movimiento
if (place_meeting(x + movimiento_horizontal, y, par_solido))
{
	movimiento_horizontal *= -1;
}
x += movimiento_horizontal;
#endregion