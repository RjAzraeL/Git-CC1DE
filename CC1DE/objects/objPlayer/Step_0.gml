#region Animation
if (Animated == 0)
{
	if (Animation > 0 and image_speed == 0)
	{
		Animation--;
	}
	else
	{
		image_speed = 1;
	}
}
#endregion
#region Movement
var DirectionMovement = 0;
if (!Victory)
{
	DirectionMovement = Control.KeyRightActive - Control.KeyLeftActive;
}
else
{
	DirectionMovement = 1;
}
MovHor = DirectionMovement*Speed;
if (!place_meeting(x,y+1,objSolid))
{
	MovVer += Gravity;
}

#region Jump
if (Control.KeyJumpActive and place_meeting(x,y+1,objSolid) and !place_meeting(x,y-JumpValue,objSolid) and !Victory)
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

#region Energy
if (Energy < 100)
{
	Energy++;
}
#endregion

#region Shot
if (Control.KeyShot1Pressed and Energy >= 33)
{
	scrSound(sndShot);
	Energy -= 33;
	var Egg = instance_create_depth(x,y,depth-1,objAttackEgg);
	Egg.MovHor = sign(image_xscale)*5;
}
if (Control.KeyShot2Pressed and Energy >= 33)
{
	scrSound(sndShot);
	Energy -= 33;
	var Egg = instance_create_depth(x,y,depth-1,objAttackEgg);
	Egg.MovHor = sign(image_xscale)*5;
}
if (Control.KeyShot3Pressed and Energy >= 33)
{
	scrSound(sndShot);
	Energy -= 33;
	var Egg = instance_create_depth(x,y,depth-1,objAttackEgg);
	Egg.MovHor = sign(image_xscale)*5;
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
#region Outside
if (y >= room_height)
{
	instance_destroy();
}
#endregion
#region Clamp
if (!Victory)
{
	x = clamp(x , 0 , room_width);
}
else
{
	if (x > room_width)
	{
		room_goto_next();
	}
}
#endregion
#endregion