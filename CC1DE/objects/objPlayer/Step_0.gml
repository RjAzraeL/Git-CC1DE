#region Movement
var DirectionMovement = Control.KeyRightActive - Control.KeyLeftActive;
MovHor = DirectionMovement*Speed;
if (!place_meeting(x,y+1,objSolid))
{
	MovVer += Gravity;
}

#region Jump
if (Control.KeyJumpActive and place_meeting(x,y+1,objSolid) and !place_meeting(x,y-JumpValue,objSolid))
{
	MovVer = -JumpValue;
}
#endregion

#region Colission
if (place_meeting(x + MovHor , y , objSolid))
{
	while (!place_meeting(x + sign(MovHor) , y , objSolid))
	{
		x += sign(MovHor);
	}
	MovHor = 0;
}
if (place_meeting(x , y + MovVer , objSolid))
{
	while (!place_meeting(x , y + sign(MovVer) , objSolid))
	{
		y += sign(MovVer);
	}
	MovVer = 0;
}
#endregion
#region Scale
if (MovHor > 0)
{
	image_xscale = 1;
}
if (MovHor < 0)
{
	image_xscale = -1;
}
#endregion
#region Clamp
x += MovHor;
y += MovVer;
#endregion
#endregion