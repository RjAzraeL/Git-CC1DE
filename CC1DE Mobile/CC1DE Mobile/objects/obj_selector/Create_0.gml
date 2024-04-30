#region creación
medio = room_width/2;
mitad = room_height/2;
anchura = room_width;
posicion = 0;
total_zonas = ds_list_size(control.data_zona);
boton_izq_x = -64;
boton_izq_x2 = 64;
boton_der_x = room_width+64;
boton_der_x2 = room_width-64;
nombre_zona = "";
for (var i = 0; i < total_zonas; i++)
{
	var _selector = instance_create_layer(medio + medio*2*i, room_height/2, "Instances", obj_selector_nivel);
	_selector.posicion = i;
	_selector.image_xscale = 2;
	_selector.image_yscale = 2;
	_selector.nombre_zona = string_upper(scr_dame_dato(control.data_zona, i, "nombre"));
}
#endregion
#region seno
valor_seno = 0;
valor_seno_aumento = .1;
#endregion