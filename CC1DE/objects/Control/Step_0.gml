#region General
scrChangeWindow(vk_f4);
scrRestartGame(ord("R"));
#endregion
#region Keys
KeyLeftActive = keyboard_check(KeyLeft);
KeyRightActive = keyboard_check(KeyRight);
KeyJumpActive = keyboard_check(KeyJump);
KeyShot1Active = keyboard_check(KeyShot1);
KeyShot2Active = keyboard_check(KeyShot2);
KeyShot3Active = keyboard_check(KeyShot3);
KeyShot1Pressed = keyboard_check_pressed(KeyShot1);
KeyShot2Pressed = keyboard_check_pressed(KeyShot2);
KeyShot3Pressed = keyboard_check_pressed(KeyShot3);
#endregion
#region Style
var _fx_struct = layer_get_fx("fxStyle");
if (_fx_struct != -1)
{
    var _params = fx_get_parameters(_fx_struct);
	StyleVariable = lerp(StyleVariable , StyleVariableTope , StyleVariableMove);
	StyleVariable = clamp(StyleVariable , 0.1 , StyleVariableTopeFijo);
	_params.g_CellSize = StyleVariable;
    fx_set_parameters(_fx_struct, _params);
}
if (StyleVariable > StyleVariableTopeFijo-1 and StyleVariableTope > 0)
{
	scrChangeStyle();
	StyleVariableTope = 0;
}
#endregion