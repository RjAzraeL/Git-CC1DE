#region caída
movimiento_vertical += .25;
x += movimiento_horizontal;
y += movimiento_vertical;
image_angle += movimiento_horizontal;
angulo_real = image_angle;
if (image_alpha > 0)
{
	image_alpha -= .01;
}
if (y >= room_height)
{
	instance_destroy();
}
#endregion