#region General
var GravitySignal= sign(Gravity);
var Delta = parTime.delta_multiplier;
var DeltaActual= parTime.actual_delta;
var GravityValue= Gravity*Delta;
#endregion
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
	MovVer += Gravity*Delta;
}

#region Jump
if (Control.KeyJumpActive and place_meeting(x,y+1,objSolid) and !place_meeting(x,y-JumpValue,objSolid) and !Victory)
{
	MovVer = -JumpValue;
}
#endregion

#region Colission
if (place_meeting(x + MovHor*Delta , y , objSolid))
{
	while (!place_meeting(x + sign(MovHor*Delta) , y , objSolid))
	{
		x += sign(MovHor*Delta);
	}
	MovHor = 0;
}
if (place_meeting(x , y + MovVer*Delta , objSolid))
{
	while (!place_meeting(x , y + sign(MovVer*Delta) , objSolid))
	{
		y += sign(MovVer*Delta);
	}
	MovVer = 0;
}
#endregion

#region Energy
if (Energy < 100)
{
	Energy += 1*Delta;
}
else
{
	Energy = 100;
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
x += MovHor*Delta;
y += MovVer*Delta;
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