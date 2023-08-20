#region Camera settings
if (scrExist(objPlayer))
{
	CameraPosX = objPlayer.x;
	CameraPosY = objPlayer.y;
}
x = lerp(x , CameraPosX , .1);
y = lerp(y , CameraPosY , .1);
#endregion