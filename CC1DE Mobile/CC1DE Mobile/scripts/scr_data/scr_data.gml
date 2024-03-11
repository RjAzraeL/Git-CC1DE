function scr_data()
{
	scr_data_pollo();
	scr_data_zona();
}
#region zona
function scr_data_zona()
{
	data_zona = ds_list_create();
	/*00*/ scr_data_crear_zona("Home" , "Pollier's House", make_color_rgb(128,128,128), make_color_rgb(222,165,99), c_white, c_white, scr_crear_lista(sprCC1zn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie2, sprCCRzn1Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn1Boss, sprCCRzn1Boss, c_white, c_white), scr_crear_lista(0,0,0,0));
	
	/*01*/ scr_data_crear_zona("Field" , "Locallo Field", make_color_rgb(230,243,214), make_color_rgb(129,220,52), c_white, c_white, scr_crear_lista(sprCC1zn1Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn1Background1,sprCCRzn1Background2,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie2, sprCCRzn1Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn1Boss, sprCCRzn1Boss, c_white, c_white), scr_crear_lista(0,.1,0,0));
	/*02*/ scr_data_crear_zona("Volcano" , "Red Volcano", make_color_rgb(192,0,0), make_color_rgb(255,251,0), c_white, c_white, scr_crear_lista(sprCC1zn2Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn2Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn2Enemie1, sprCCRzn2Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn2Enemie2, sprCCRzn2Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn2Boss, sprCCRzn2Boss, c_white, c_white), scr_crear_lista(0,0,0,0));
	/*03*/ scr_data_crear_zona("Sky" , "Angel's Sky", make_color_rgb(192,255,255), make_color_rgb(255,145,255), c_white, c_white, scr_crear_lista(sprCC1zn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn3Enemie1, sprCCRzn3Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn3Enemie2, sprCCRzn3Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn3Enemie1, sprCCRzn3Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn3Boss, sprCCRzn3Boss, c_white, c_white), scr_crear_lista(0,0,0,0));
	/*04*/ scr_data_crear_zona("Desert" , "Argus's Ruins", make_color_rgb(255,255,192), make_color_rgb(254,255,239), c_white, c_white, scr_crear_lista(sprCC1zn4Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn4Background,sprCCRzn1Background2,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie2, sprCCRzn4Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Boss, sprCCRzn4Boss, c_white, c_white), scr_crear_lista(0,.1,0,0));
	
	/*05*/ scr_data_crear_zona("Snowfall" , "Snowy Mountains", make_color_rgb(245,245,245), make_color_rgb(255,255,255), c_white, c_white, scr_crear_lista(sprCC1zn5Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn5Background1,sprCCRzn5Background2,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn5Enemie1, sprCCRzn5Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn5Enemie2, sprCCRzn5Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn5Enemie1, sprCCRzn5Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn5Boss, sprCCRzn5Boss, c_white, c_white), scr_crear_lista(0,.1,0,0));
	/*06*/ scr_data_crear_zona("Cave" , "Underground", make_color_rgb(91,44,0), make_color_rgb(91,44,0), c_white, c_white, scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn6Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn6Enemie1, sprCCRzn6Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie2, sprCCRzn4Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn6Boss, sprCCRzn6Boss, c_white, c_white), scr_crear_lista(0,0,0,0));
	/*07*/ scr_data_crear_zona("Inferno" , "Inferno", make_color_rgb(255,255,255), make_color_rgb(255,255,255), c_white, c_white, scr_crear_lista(sprCC1zn7Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn7Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn8Enemie1, sprCCRzn8Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn2Enemie1, sprCCRzn2Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn2Enemie2, sprCCRzn2Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn2Boss, sprCCRzn2Boss, c_white, c_white), scr_crear_lista(0,0,0,0));
	/*08*/ scr_data_crear_zona("Nightmare" , "Falcon's Lair", make_color_rgb(0,0,0), make_color_rgb(99,0,133), c_white, c_white, scr_crear_lista(sprCC1zn8Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn8Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn8Enemie1, sprCCRzn8Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn8Enemie1, sprCCRzn8Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn8Enemie1, sprCCRzn8Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn8Boss, sprCCRzn8Boss, c_white, c_white), scr_crear_lista(0,0,0,0));
	
	/*FC*/ scr_data_crear_zona("Factory" , "Mega Factory", make_color_rgb(222,214,214), make_color_rgb(222,214,214), c_white, c_white, scr_crear_lista(sprCC1znfBackground,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRznfBackground,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Enemie2, sprCCRzn4Enemie2, c_white, c_white), scr_crear_lista(c_white, c_white, c_white, c_white), scr_crear_lista(c_white, c_white, c_white, c_white), scr_crear_lista(0,0,0,0));
}
function scr_data_crear_zona( nombre, descripcion, color1, color2, color3, color4, fondo1, fondo2, fondo3, fondo4, enemigo1, enemigo2, enemigo3, jefe, fondovelocidad)
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
	_paquete[?"fondovelocidad"] = fondovelocidad;
	ds_list_add(control.data_zona, _paquete);
}
#endregion
#region pollo
function scr_data_pollo()
{
	data_pollo = ds_list_create();
	/*00*/scr_data_crear_pollo("Alien", "", 0);
	/*01*/scr_data_crear_pollo("Angel", "", 0);
	/*02*/scr_data_crear_pollo("Animatronic", "", 0);
	/*03*/scr_data_crear_pollo("Armor", "", 0);
	/*04*/scr_data_crear_pollo("Booster", "", 0);
	/*05*/scr_data_crear_pollo("Chica", "", 0);
	/*06*/scr_data_crear_pollo("Chick", "", 0);
	/*07*/scr_data_crear_pollo("Chird", "", 0);
	/*08*/scr_data_crear_pollo("Cloudy", "", 0);
	/*09*/scr_data_crear_pollo("Cow", "", 0);
	/*10*/scr_data_crear_pollo("Dinami", "", 0);
	/*11*/scr_data_crear_pollo("Drago", "", 0);
	/*12*/scr_data_crear_pollo("Egi", "", 0);
	/*13*/scr_data_crear_pollo("Electron", "", 0);
	/*14*/scr_data_crear_pollo("FBarce", "", 0);
	/*15*/scr_data_crear_pollo("FNapoli", "", 0);
	/*16*/scr_data_crear_pollo("FFooster", "", 0);
	/*17*/scr_data_crear_pollo("FRealm", "", 0);
	/*18*/scr_data_crear_pollo("FUni", "", 0);
	/*19*/scr_data_crear_pollo("Gallo", "", 0);
	/*20*/scr_data_crear_pollo("Gold", "", 0);
	/*21*/scr_data_crear_pollo("Grassy", "", 0);
	/*22*/scr_data_crear_pollo("GreenVideoInc", "", 0);
	/*23*/scr_data_crear_pollo("Grey", "", 0);
	/*24*/scr_data_crear_pollo("Hueva", "", 0);
	/*25*/scr_data_crear_pollo("Iguanard", "", 0);
	/*26*/scr_data_crear_pollo("Invert", "", 0);
	/*27*/scr_data_crear_pollo("Iris", "", 0);
	/*28*/scr_data_crear_pollo("Jeff", "", 0);
	/*29*/scr_data_crear_pollo("Jhonatan", "", 0);
	/*30*/scr_data_crear_pollo("Law", "", 0);
	/*31*/scr_data_crear_pollo("LockHolm", "", 0);
	/*32*/scr_data_crear_pollo("Loko", "", 0);
	/*33*/scr_data_crear_pollo("Looster", "", 0);
	/*34*/scr_data_crear_pollo("Magma", "", 0);
	/*35*/scr_data_crear_pollo("Mali", "", 0);
	/*36*/scr_data_crear_pollo("Manic", "", 0);
	/*37*/scr_data_crear_pollo("Max", "", 0);
	/*38*/scr_data_crear_pollo("McDuck", "", 0);
	/*39*/scr_data_crear_pollo("Meta", "", 0);
	/*40*/scr_data_crear_pollo("MetaSoldier", "", 0);
	/*41*/scr_data_crear_pollo("Monocrom", "", 0);
	/*42*/scr_data_crear_pollo("Monster", "", 0);
	/*43*/scr_data_crear_pollo("Nave", "", 0);
	/*44*/scr_data_crear_pollo("NinjaCold", "", 0);
	/*45*/scr_data_crear_pollo("Pencil", "", 0);
	/*46*/scr_data_crear_pollo("Pengu", "", 0);
	/*47*/scr_data_crear_pollo("Pollier", "", 0);
	/*48*/scr_data_crear_pollo("Pollisor", "", 0);
	/*49*/scr_data_crear_pollo("Porki", "", 0);
	/*50*/scr_data_crear_pollo("Rafa", "", 0);
	/*51*/scr_data_crear_pollo("Raro", "", 0);
	/*52*/scr_data_crear_pollo("RickRoll", "", 0);
	/*53*/scr_data_crear_pollo("Rooster", "", 0);
	/*54*/scr_data_crear_pollo("ShiKen", "", 0);
	/*55*/scr_data_crear_pollo("Silver", "", 0);
	/*56*/scr_data_crear_pollo("Snick", "", 0);
	/*57*/scr_data_crear_pollo("Snow", "", 0);
	/*58*/scr_data_crear_pollo("TheFanTom", "", 0);
	/*59*/scr_data_crear_pollo("Toraishi", "", 0);
	/*60*/scr_data_crear_pollo("Vio", "", 0);
	/*61*/scr_data_crear_pollo("Voltio", "", 0);
	/*62*/scr_data_crear_pollo("Warrior", "", 0);
	/*63*/scr_data_crear_pollo("WarriorSuper", "", 0);
	/*64*/scr_data_crear_pollo("Zeo", "", 0);
	/*65*/scr_data_crear_pollo("Zombie", "", 0);
}
function scr_data_crear_pollo( nombre, descripcion, precio)
{
	var _paquete = ds_map_create();
	_paquete[?"nombre"] = nombre;
	_paquete[?"descripción"] = descripcion;
	_paquete[?"precio"] = precio;
	ds_list_add(control.data_pollo, _paquete);
}
function scr_pollo_dame_cc1(_id)
{
	var _string1 = "sprCC1skin";
	var _string2 = scr_dame_dato(control.data_pollo, _id, "nombre");
	var _ind = asset_get_index(_string1 + _string2);
	return (_ind == -1) ? sprCC1atkEgg : _ind;
}
function scr_pollo_dame_ccr(_id)
{
	var _string1 = "sprCCRskin";
	var _string2 = scr_dame_dato(control.data_pollo, _id, "nombre");
	var _ind = asset_get_index(_string1 + _string2);
	return (_ind == -1) ? sprCCRatkEgg : _ind;
}
#endregion