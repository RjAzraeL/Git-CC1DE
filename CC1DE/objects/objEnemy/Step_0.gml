#region Movement
if (place_meeting(x+MovHor,y,objSolid))
{
	MovHor *= -1;	
}
x += MovHor;
#endregion