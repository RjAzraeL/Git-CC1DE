#region Create 
scrChangeStyle();
instance_create_depth(0,0,depth,objCamera);

layer_create(-100,"fxStyle")
var _fx_twist = fx_create("_filter_twist_blur");
layer_set_fx("fxStyle", _fx_twist);
#endregion