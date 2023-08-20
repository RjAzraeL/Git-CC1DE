#region Jump
if (place_meeting(x,y-1,objPlayer))
{
	var Value = 12;
	image_speed = 1;
	objPlayer.MovVer = -Value;
}
#endregion