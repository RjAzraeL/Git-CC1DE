#region Movement
if (place_meeting(x+MovHor*scrGetDelta(),y,objSolid) or !place_meeting(x-16,y+8,objSolid))
{
	MovHor *= -1;	
}
x += MovHor*scrGetDelta();
#endregion