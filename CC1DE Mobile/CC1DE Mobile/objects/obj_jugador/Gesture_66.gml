#region agarre
var fingerX = event_data[?"guiposX"];
var fingerY = event_data[?"guiposY"];
var finger = event_data[?"touch"];
if (fingerY >= display_get_gui_height()/3)
{
	if (joystick.finger == -1 and fingerX < display_get_gui_width()/2)
	{
		joystick.finger = finger;
		joystick.x = fingerX;
		joystick.y = fingerY;
		joystick.anclaX = event_data[?"guiposX"];
		joystick.anclaY = event_data[?"guiposY"];
	}
}
#endregion