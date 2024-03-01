function scr_data()
{
	
}

function scr_data_zona()
{
	data_zona = ds_list_create();
	/*00*/ scr_data_crear_zona("Campo" , "Campo Locallo", c_green, scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo),  );
}
function scr_data_crear_zona( nombre, descripcion, color, fondo1, fondo2, fondo3, fondo4, enemigo1, enemigo2, enemigo3, jefe)
{
	var _paquete = ds_map_create();
	_paquete[?"nombre"] = nombre;
	_paquete[?"descripción"] = descripcion;
	_paquete[?"color"] = color;
	_paquete[?"fondo1"] = fondo1;
	_paquete[?"fondo2"] = fondo2;
	_paquete[?"fondo3"] = fondo3;
	_paquete[?"fondo4"] = fondo4;
	_paquete[?"enemigo1"] = enemigo1;
	_paquete[?"enemigo2"] = enemigo2;
	_paquete[?"enemigo3"] = enemigo3;
	_paquete[?"jefe"] = jefe;
	ds_list_add(control.data_zona, _paquete);
}