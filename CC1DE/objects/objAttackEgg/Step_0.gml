#region Angle
image_angle += 10;
#endregion
#region Movement
x += MovHor;
#endregion
#region Collision
if (place_meeting(x,y,objSolid))
{
	instance_destroy();
}
#endregion