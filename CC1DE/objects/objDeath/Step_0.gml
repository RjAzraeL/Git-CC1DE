#region Movement
image_angle += sign(Dir)*5;
image_xscale += .02;
image_yscale += .02;
Value = clamp(Value-3 , 0 , 255);
image_blend = make_color_rgb(Value,Value,Value);
if (MovVer < 9)
{
	MovVer += Gravity*scrGetDelta();
}
x += MovHor*scrGetDelta();
y += MovVer*scrGetDelta();
#endregion