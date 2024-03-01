#region crear cámara
instance_create_depth( obj_jugador.x, obj_jugador.y, depth+5, obj_camara);
#endregion
#region crear capa de fondo
var capa_fondo = layer_create(550, "fondo");
instance_create_layer(0, 0, capa_fondo, par_fondo);
#endregion