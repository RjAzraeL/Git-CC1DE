#region crear cámara
instance_create_depth( obj_jugador.x, obj_jugador.y, depth+5, obj_camara);
#endregion
#region rango
rango = 1500;
if (control.zona_actual == zona_hogar)
{
	rango = 900;
}
#endregion