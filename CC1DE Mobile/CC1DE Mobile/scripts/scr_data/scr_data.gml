function scr_data()
{
	scr_data_zona();
}

function scr_data_zona()
{
	data_zona = ds_list_create();
	/*00*/ scr_data_crear_zona("Home" , "Pollier's House", make_color_rgb(128,128,128), make_color_rgb(222,165,99), c_white, c_white, scr_crear_lista(sprCC1zn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie2, sprCCRzn1Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn1Boss, sprCCRzn1Boss, c_white, c_white) );
	/*01*/ scr_data_crear_zona("Field" , "Locallo Field", make_color_rgb(230,243,214), make_color_rgb(129,220,52), c_white, c_white, scr_crear_lista(sprCC1zn1Background,sprCC1zn1Background,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn1Background1,sprCCRzn1Background2,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie2, sprCCRzn1Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn1Boss, sprCCRzn1Boss, c_white, c_white) );
	/*02*/ scr_data_crear_zona("Volcano" , "Red Volcano", make_color_rgb(192,0,0), make_color_rgb(255,251,0), c_white, c_white, scr_crear_lista(sprCC1zn2Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn2Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn2Enemie1, sprCCRzn2Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn2Enemie2, sprCCRzn2Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn2Boss, sprCCRzn2Boss, c_white, c_white) );
	/*03*/ scr_data_crear_zona("Sky" , "Angel's Sky", make_color_rgb(192,255,255), make_color_rgb(255,145,255), c_white, c_white, scr_crear_lista(sprCC1zn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn2Enemie1, sprCCRzn2Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn2Enemie2, sprCCRzn2Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn3Enemie1, sprCCRzn3Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn3Boss, sprCCRzn3Boss, c_white, c_white) );
	/*04*/ scr_data_crear_zona("Desert" , "Argus's Ruins", make_color_rgb(255,255,192), make_color_rgb(254,255,239), c_white, c_white, scr_crear_lista(sprCC1zn4Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn4Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie2, sprCCRzn4Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Boss, sprCCRzn4Boss, c_white, c_white) );
	/*05*/ scr_data_crear_zona("Snowfall" , "Snowy Mountains", make_color_rgb(192,255,255), make_color_rgb(255,145,255), c_white, c_white, scr_crear_lista(sprCC1zn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn5Enemie1a, sprCCRzn5Enemie1a, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie2, sprCCRzn4Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Boss, sprCCRzn4Boss, c_white, c_white) );
	/*06*/ scr_data_crear_zona("Cave" , "Underground", make_color_rgb(192,255,255), make_color_rgb(255,145,255), c_white, c_white, scr_crear_lista(sprCC1zn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn6Enemie1, sprCCRzn6Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie2, sprCCRzn4Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Boss, sprCCRzn4Boss, c_white, c_white) );
	/*07*/ scr_data_crear_zona("Inferno" , "Inferno", make_color_rgb(192,255,255), make_color_rgb(255,145,255), c_white, c_white, scr_crear_lista(sprCC1zn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie2, sprCCRzn4Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Boss, sprCCRzn4Boss, c_white, c_white) );
	/*08*/ scr_data_crear_zona("Nightmare" , "Falcon's Lair", make_color_rgb(192,255,255), make_color_rgb(255,145,255), c_white, c_white, scr_crear_lista(sprCC1zn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn8Enemie1, sprCCRzn8Enemie1, c_white, c_white), scr_crear_lista(c_white, c_white, c_white, c_white), scr_crear_lista(sprCC1zn8Enemie1, sprCCRzn8Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Boss, sprCCRzn4Boss, c_white, c_white) );
	/*FC*/ scr_data_crear_zona("Factory" , "Mega Factory", make_color_rgb(192,255,255), make_color_rgb(255,145,255), c_white, c_white, scr_crear_lista(sprCC1znfBackground,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRznfBackground,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie2, sprCCRzn4Enemie2, c_white, c_white), scr_crear_lista(c_white, c_white, c_white, c_white), scr_crear_lista(c_white, c_white, c_white, c_white) );
	
	
	
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