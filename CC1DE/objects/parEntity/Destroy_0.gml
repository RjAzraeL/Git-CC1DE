#region Destroy
if (object_index != objCoin)
{
	var Death = instance_create_depth(x,y,depth-1,objDeath);
	Death.sprite_index = sprite_index;
	Death.image_speed = 0;
	Death.image_index = 0;
}
#endregion