function scrChangeStyle()
{
	switch (Control.ActualStyle)
	{
		case(0):
		{
			with (parEntity)
			{
				sprite_index = ActualSkin[0];
			}
			#region CC1R
			var Local = layer_get_id("CC1Rblocks_1");
			layer_set_visible(Local , false);
			Local = layer_get_id("CC1Rblocks");
			layer_set_visible(Local , false);
			Local = layer_get_id("CC1Rbackground_2");
			layer_set_visible(Local , false);
			Local = layer_get_id("CC1Rbackground_1");
			layer_set_visible(Local , false);
			Local = layer_get_id("CC1Rbackground_0");
			layer_set_visible(Local , false);
			#endregion
			#region CC1
			Local = layer_get_id("CC1blocks");
			layer_set_visible(Local, true);
			Local = layer_get_id("CC1background_1");
			layer_set_visible(Local, true);
			Local = layer_get_id("CC1background_0");
			layer_set_visible(Local, true);
			#endregion
			break;
		}
		case(1):
		{
			with (parEntity)
			{
				sprite_index = ActualSkin[1];
			}
			#region CC1R
			var Local = layer_get_id("CC1Rblocks_1");
			layer_set_visible(Local , true);
			Local = layer_get_id("CC1Rblocks");
			layer_set_visible(Local , true);
			Local = layer_get_id("CC1Rbackground_2");
			layer_set_visible(Local , true);
			Local = layer_get_id("CC1Rbackground_1");
			layer_set_visible(Local , true);
			Local = layer_get_id("CC1Rbackground_0");
			layer_set_visible(Local , true);
			#endregion
			#region CC1
			Local = layer_get_id("CC1blocks");
			layer_set_visible(Local, false);
			Local = layer_get_id("CC1background_1");
			layer_set_visible(Local, false);
			Local = layer_get_id("CC1background_0");
			layer_set_visible(Local, false);
			#endregion
			break;
		}
	}
	/*
	#region FX
	#region CCR
	var _fx_zoom_blur = fx_create("_filter_zoom_blur");
	var Local = layer_get_id("CC1Rblocks_1");
	layer_set_fx(Local , _fx_zoom_blur);
	Local = layer_get_id("CC1Rblocks");
	layer_set_fx(Local , _fx_zoom_blur);
	Local = layer_get_id("CC1Rbackground_2");
	layer_set_fx(Local , _fx_zoom_blur);
	Local = layer_get_id("CC1Rbackground_1");
	layer_set_fx(Local , _fx_zoom_blur);
	Local = layer_get_id("CC1Rbackground_0");
	layer_set_fx(Local , _fx_zoom_blur);
	#endregion
	#region CC1
	Local = layer_get_id("CC1blocks");
	layer_set_fx(Local , _fx_zoom_blur);
	Local = layer_get_id("CC1background_1");
	layer_set_fx(Local , _fx_zoom_blur);
	Local = layer_get_id("CC1background_0");
	layer_set_fx(Local , _fx_zoom_blur);
	#endregion
	#endregion
	*/
}