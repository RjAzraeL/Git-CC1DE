#region Value
if (Get)
{
	if (speed > 0)
	{
		speed -= Value;
	}
	else
	{
		image_alpha -= .1*scrGetDelta();
		if (image_alpha <= 0)
		{
			instance_destroy();
		}
	}
}
#endregion