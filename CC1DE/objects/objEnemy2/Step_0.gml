#region Movement
if (place_meeting(x+MovHor*scrGetDelta(),y,objSolid))
{
	MovHor *= -1;	
}
x += MovHor*scrGetDelta();
#endregion