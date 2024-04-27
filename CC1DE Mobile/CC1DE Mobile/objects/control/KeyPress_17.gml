#region
pollo_actual++;
if (pollo_actual >= ds_list_size(control.data_pollo)-1)
{
	pollo_actual = 0;
}
room_restart();
#endregion