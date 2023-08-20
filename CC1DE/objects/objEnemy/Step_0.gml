#region Movement
if (place_meeting(x+MovHor,y,objSolid) or !place_meeting(x-16,y+8,objSolid))
{
	MovHor *= -1;	
}
x += MovHor;
#endregion