#region Camera settings
if (scrExist(objPlayer))
{
	CameraPosX = objPlayer.x;
	CameraPosY = objPlayer.y;
}

if (mouse_wheel_up()) 
{
	zoom_value -= .1;
}
if (mouse_wheel_down()) 
{
	zoom_value += .1;
}
zoom_value = clamp(zoom_value , .5 , 1);

x = lerp(x , CameraPosX , .05);
y = lerp(y , CameraPosY , .05);
zoom = lerp(zoom , zoom_value , .1);
camera_set_view_size(view_camera[0] , 853*zoom , 480*zoom);
#endregion