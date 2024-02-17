#region desagarre
var finger = event_data[?"touch"];
if (finger == joystick.finger)
{
	btn_der = 0;
	btn_izq = 0;
	joystick.finger = -1;
}
#endregion