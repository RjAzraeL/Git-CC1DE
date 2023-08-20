#region Variables
event_inherited();
ChickenValue = irandom( ds_list_size(Control.DataChicken)-1 );
ActualSkin[0] = ds_list_find_value( scrChickenGet(ChickenValue , "Sprite") , 0);
ActualSkin[1] = ds_list_find_value( scrChickenGet(ChickenValue , "Sprite") , 1);
image_speed = 0;
Victory = false;
Animated = scrChickenGet(ChickenValue , "Animated");
image_speed = Animated;
Animation = 180;
Energy = 100;
#region Stats
Speed = 3;
JumpValue = 6;
Gravity = .25;
MovHor = 0;
MovVer = 0;
#endregion

#endregion