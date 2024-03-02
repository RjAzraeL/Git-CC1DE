function scr_data()
{
	scr_data_zona();
}

function scr_data_zona()
{
	data_zona = ds_list_create();
	/*00*/ scr_data_crear_zona("Casa" , "Casa pollo", c_maroon, c_maroon, c_maroon, c_maroon, scr_crear_lista(sprCCRzn0Background,sprCCRzn0Background,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sprCCRzn0Background,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, sprCC1zn1Enemie1, sprCC1zn1Enemie1), scr_crear_lista(sprCC1zn1Enemie2, sprCCRzn1Enemie2, sprCC1zn1Enemie2, sprCC1zn1Enemie2), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, sprCC1zn1Enemie1, sprCC1zn1Enemie1), scr_crear_lista(sprCC1zn1Boss, sprCCRzn1Boss, sprCC1zn1Boss, sprCC1zn1Boss) );
	/*01*/ scr_data_crear_zona("Campo" , "Campo Locallo", c_green, c_green, c_green, c_green, scr_crear_lista(sprCC1zn1Background,sprCC1zn1Background,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn1Background1,sprCCRzn1Background2,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, sprCC1zn1Enemie1, sprCC1zn1Enemie1), scr_crear_lista(sprCC1zn1Enemie2, sprCCRzn1Enemie2, sprCC1zn1Enemie2, sprCC1zn1Enemie2), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, sprCC1zn1Enemie1, sprCC1zn1Enemie1), scr_crear_lista(sprCC1zn1Boss, sprCCRzn1Boss, sprCC1zn1Boss, sprCC1zn1Boss) );
	/*02*/ scr_data_crear_zona("Volcán" , "Lugar caluroso", make_color_rgb(255,128,128), make_color_rgb(255,251,0), make_color_rgb(192,0,0), make_color_rgb(192,0,0), scr_crear_lista(sprCC1zn2Background1,sprCC1zn2Background1,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn2Background1,sprCCRzn2Background2,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn2Enemie1, sprCCRzn2Enemie1, sprCC1zn1Enemie1, sprCC1zn1Enemie1), scr_crear_lista(sprCC1zn2Enemie2, sprCCRzn2Enemie2, sprCC1zn1Enemie2, sprCC1zn1Enemie2), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, sprCC1zn1Enemie1, sprCC1zn1Enemie1), scr_crear_lista(sprCC1zn2Boss, sprCCRzn2Boss, sprCC1zn1Boss, sprCC1zn1Boss) );
}
function scr_data_crear_zona( nombre, descripcion, color1, color2, color3, color4, fondo1, fondo2, fondo3, fondo4, enemigo1, enemigo2, enemigo3, jefe)
{
	var _paquete = ds_map_create();
	_paquete[?"nombre"] = nombre;
	_paquete[?"descripción"] = descripcion;
	_paquete[?"color1"] = color1;
	_paquete[?"color2"] = color2;
	_paquete[?"color3"] = color3;
	_paquete[?"color4"] = color4;
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