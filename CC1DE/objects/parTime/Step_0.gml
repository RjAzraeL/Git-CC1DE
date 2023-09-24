#region delta
actual_delta = delta_time/1000000;
delta_multiplier = actual_delta / target_delta;
delta_multiplier = clamp(delta_multiplier , 0 , 5);
#endregion

#region sprite
if (my_time > 0)
{
	my_time -= 1/60;
}
else
{
	my_time = 3;
}
#endregion

#region index
my_index += delta_multiplier;
#endregion