#region Angle
image_angle += 10*scrGetDelta();
#endregion
#region Movement
x += MovHor*scrGetDelta();
#endregion
#region Collision
if (place_meeting(x,y,objSolid))
{
	instance_destroy();
}
#endregion