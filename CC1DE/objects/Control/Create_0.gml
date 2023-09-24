#region Variables
instance_create_depth(0,0,0,parTime);
scrData();
debug = true;
MusicActual = sndNo;
VolumeMusic = .25;
VolumeSound = .5;
scrMusic(ostZn1);
room_goto(rmZn1lv1a);
scrScaleResolution(853,480,2);
Value = 1;
ValueFPS= 60;
ActualStyle = 0;
scrChangeStyle();
instance_create_depth(0,0,0,objCamera);
#region Controls
KeyLeft = vk_left;
KeyRight = vk_right;
KeyJump = vk_up;
KeyShot1 = ord("Z");
KeyShot2 = ord("X");
KeyShot3 = ord("C");

KeyLeftActive = false;
KeyRightActive = false;
KeyJumpActive = false;
KeyShot1Active = false;
KeyShot2Active = false;
KeyShot3Active = false;
KeyShot1Pressed = false;
KeyShot2Pressed = false;
KeyShot3Pressed = false;
#endregion
#region Style
current_style = 1;
StyleVariable = 0;
StyleVariableMove = 0.0015;
StyleVariableTope = 0;
StyleVariableTopeFijo = 0.032;
#endregion

#endregion