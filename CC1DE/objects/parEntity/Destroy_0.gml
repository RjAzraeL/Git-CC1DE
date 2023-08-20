#region Destroy
if (object_index != objCoin and object_index != objDeath)
{
	if (object_index == objPlayer)
	{
		scrSound(sndDeath);
	}
	var Death = instance_create_depth(x,y,depth-1,objDeath);
	Death.ActualSkin[0] = ActualSkin[0];
	Death.ActualSkin[1] = ActualSkin[1];
	Death.sprite_index = sprite_index;
	Death.image_speed = 0;
	Death.image_index = 0;
}
#endregion