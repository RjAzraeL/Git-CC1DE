function scr_data()
{
	scr_data_pollo();
	scr_data_zona();
	scr_data_musica();
}

#region zona
function scr_data_zona()
{
	data_zona = ds_list_create();
	/*00*/ scr_data_crear_zona("Home" , "Pollier's House", make_color_rgb(128,128,128), make_color_rgb(222,165,99), c_white, c_white, scr_crear_lista(sprCC1zn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn0Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie2, sprCCRzn1Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn1Boss, sprCCRzn1Boss, c_white, c_white), scr_fondo_velocidad( scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0)), rmZn0Home);
	
	/*01*/ scr_data_crear_zona("Field" , "Locallo Field", make_color_rgb(230,243,214), make_color_rgb(129,220,52), make_color_rgb(62,139,129), c_white, scr_crear_lista(sprCC1zn1Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn1Background1,sprCCRzn1Background2,sin_fondo,sin_fondo), scr_crear_lista(sprSCCzn1Background1,sprSCCzn1Background2,sprSCCzn1Background3,sprSCCzn1Background4), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, sprSCCzn1Enemie1, c_white), scr_crear_lista(sprCC1zn1Enemie2, sprCCRzn1Enemie2, sprSCCzn1Enemie2, c_white), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, sprSCCzn1Enemie1, c_white), scr_crear_lista(sprCC1zn1Boss, sprCCRzn1Boss, sprSCCzn1Boss, c_white), scr_fondo_velocidad( scr_crear_lista(0,0,0,0), scr_crear_lista(0,.1,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0)), rmZn1Lv1a);
	/*02*/ scr_data_crear_zona("Volcano" , "Red Volcano", make_color_rgb(192,0,0), make_color_rgb(255,251,0), make_color_rgb(26,13,9), c_white, scr_crear_lista(sprCC1zn2Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn2Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprSCCzn2Background1,sprSCCzn2Background2,sprSCCzn2Background3,sprSCCzn2Background4), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn2Enemie1, sprCCRzn2Enemie1, sprSCCzn2Enemie1, c_white), scr_crear_lista(sprCC1zn2Enemie2, sprCCRzn2Enemie2, sprSCCzn2Enemie2, c_white), scr_crear_lista(sprCC1zn2Enemie1, sprCCRzn2Enemie1, sprSCCzn2Enemie1, c_white), scr_crear_lista(sprCC1zn2Boss, sprCCRzn2Boss, sprSCCzn2Boss, c_white), scr_fondo_velocidad( scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0)), rmZn2Lv1a);
	/*03*/ scr_data_crear_zona("Sky" , "Angel's Sky", make_color_rgb(192,255,255), make_color_rgb(255,145,255), make_color_rgb(213,55,166), c_white, scr_crear_lista(sprCC1zn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn3Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprSCCzn3Background1,sprSCCzn3Background2,sprSCCzn3Background3,sprSCCzn3Background4), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn3Enemie1, sprCCRzn3Enemie1, sprSCCzn3Enemie1, c_white), scr_crear_lista(sprCC1zn3Enemie2, sprCCRzn3Enemie2, sprSCCzn3Enemie2, c_white), scr_crear_lista(sprCC1zn3Enemie1, sprCCRzn3Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn3Boss, sprCCRzn3Boss, sprSCCzn3Boss, c_white), scr_fondo_velocidad( scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0)), rmZn3Lv1a);
	/*04*/ scr_data_crear_zona("Desert" , "Argus's Ruins", make_color_rgb(255,255,192), make_color_rgb(254,255,239), make_color_rgb(73,129,92), c_white, scr_crear_lista(sprCC1zn4Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn4Background,sprCCRzn1Background2,sin_fondo,sin_fondo), scr_crear_lista(sprSCCzn4Background1,sprSCCzn4Background2,sprSCCzn4Background3,sprSCCzn4Background4), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, sprSCCzn4Enemie1, c_white), scr_crear_lista(sprCC1zn4Enemie2, sprCCRzn4Enemie2, sprSCCzn4Enemie2, c_white), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn4Boss, sprCCRzn4Boss, sprSCCzn4Boss, c_white), scr_fondo_velocidad( scr_crear_lista(0,.1,0,0), scr_crear_lista(0,.1,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0)), rmZn4Lv1a);
	
	/*05*/ scr_data_crear_zona("Snowfall" , "Snowy Mountains", make_color_rgb(245,245,245), make_color_rgb(255,255,255), make_color_rgb(15,23,57), c_white, scr_crear_lista(sprCC1zn5Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn5Background1,sprCCRzn5Background2,sin_fondo,sin_fondo), scr_crear_lista(sprSCCzn5Background1,sprSCCzn5Background2,sprSCCzn5Background3,sprSCCzn5Background4), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn5Enemie1, sprCCRzn5Enemie1, sprSCCzn5Enemie1, c_white), scr_crear_lista(sprCC1zn5Enemie2, sprCCRzn5Enemie2, sprSCCzn5Enemie2, c_white), scr_crear_lista(sprCC1zn5Enemie1, sprCCRzn5Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn5Boss, sprCCRzn5Boss, sprSCCzn5Boss, c_white), scr_fondo_velocidad( scr_crear_lista(0,.1,0,0), scr_crear_lista(0,.1,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0)), rmZn5Lv1a);
	/*06*/ scr_data_crear_zona("Cave" , "Underground", make_color_rgb(91,44,0), make_color_rgb(91,44,0), make_color_rgb(0,0,0), c_white, scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn6Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprSCCzn6Background1,sprSCCzn6Background2,sprSCCzn6Background3,sprSCCzn6Background4), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn6Enemie1, sprCCRzn6Enemie1, sprSCCzn6Enemie1, c_white), scr_crear_lista(sprCC1zn4Enemie2, sprCCRzn4Enemie2, sprSCCzn6Enemie2, c_white), scr_crear_lista(sprCC1zn4Enemie1, sprCCRzn4Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn6Boss, sprCCRzn6Boss, sprSCCzn6Boss, c_white), scr_fondo_velocidad( scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0)), rmZn6Lv1a);
	/*07*/ scr_data_crear_zona("Inferno" , "Inferno", make_color_rgb(255,255,255), make_color_rgb(255,255,255), make_color_rgb(0,0,0), c_white, scr_crear_lista(sprCC1zn7Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn7Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprSCCzn6Background1,sprSCCzn6Background2,sprSCCzn6Background3,sprSCCzn6Background4), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn7Enemie1, sprCCRzn7Enemie1, sprSCCzn7Enemie1, c_white), scr_crear_lista(sprCC1zn7Enemie2, sprCCRzn7Enemie2, sprSCCzn7Enemie2, c_white), scr_crear_lista(sprCC1zn7Enemie2, sprCCRzn7Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn7Boss, sprCCRzn2Boss, sprSCCzn7Boss, c_white), scr_fondo_velocidad( scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0)), rmZn7Lv1a);
	/*08*/ scr_data_crear_zona("Nightmare" , "Falcon's Lair", make_color_rgb(0,0,0), make_color_rgb(99,0,133), make_color_rgb(85,39,105), c_white, scr_crear_lista(sprCC1zn8Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRzn8Background,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprSCCzn8Background1,sprSCCzn8Background2,sprSCCzn8Background3,sprSCCzn8Background4), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn8Enemie1, sprCCRzn8Enemie1, sprSCCzn8Enemie1, c_white), scr_crear_lista(sprCC1zn8Enemie2, sprCCRzn8Enemie2, sprSCCzn8Enemie2, c_white), scr_crear_lista(sprCC1zn8Enemie1, sprCCRzn8Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn8Boss, sprCCRzn8Boss, sprSCCzn8Boss, c_white), scr_fondo_velocidad( scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0)), rmZn8Lv1a);
	
	/*FC*/ scr_data_crear_zona("Factory" , "Mega Factory", make_color_rgb(222,214,214), make_color_rgb(222,214,214), make_color_rgb(33,33,41), c_white, scr_crear_lista(sprCC1znfBackground,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCCRznfBackground,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprSCCznfBackground,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sin_fondo,sin_fondo,sin_fondo,sin_fondo), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie2, sprCCRzn1Enemie2, c_white, c_white), scr_crear_lista(sprCC1zn1Enemie1, sprCCRzn1Enemie1, sprSCCzn1Enemie1, c_white), scr_crear_lista(sprCC1zn1Boss, sprCCRzn1Boss, sprSCCzn1Boss, c_white), scr_fondo_velocidad(scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0), scr_crear_lista(0,0,0,0)), rmZnfLv1a);
}
function scr_data_crear_zona( nombre, descripcion, color1, color2, color3, color4, fondo1, fondo2, fondo3, fondo4, enemigo1, enemigo2, enemigo3, jefe, fondovelocidad, _room)
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
	_paquete[?"fondovelocidad"] = fondovelocidad[?"fondovelocidad"];
	_paquete[?"fondovelocidad2"] = fondovelocidad[?"fondovelocidad2"];
	_paquete[?"fondovelocidad3"] = fondovelocidad[?"fondovelocidad3"];
	_paquete[?"fondovelocidad4"] = fondovelocidad[?"fondovelocidad4"];
	_paquete[?"room"] = _room;
	ds_list_add(control.data_zona, _paquete);
}

function scr_fondo_velocidad(fondo1, fondo2, fondo3, fondo4)
{
	var _paquete = ds_map_create();
	_paquete[?"fondovelocidad"] = fondo1;
	_paquete[?"fondovelocidad2"] = fondo2;
	_paquete[?"fondovelocidad3"] = fondo3;
	_paquete[?"fondovelocidad4"] = fondo4;
	return _paquete;
}

#endregion
#region pollo
function scr_data_pollo()
{
	data_pollo = ds_list_create();
	/*00*/scr_data_crear_pollo("Alien", "", 0);
	#macro pollo_alien 0
	/*01*/scr_data_crear_pollo("Angel", "", 0);
	#macro pollo_angel 1
	/*02*/scr_data_crear_pollo("Animatronic", "", 0);
	#macro pollo_animatronic 2
	/*03*/scr_data_crear_pollo("Armor", "", 0);
	#macro pollo_armor 3
	/*04*/scr_data_crear_pollo("Booster", "", 0);
	#macro pollo_booster 4
	/*05*/scr_data_crear_pollo("Chica", "", 0);
	#macro pollo_chica 5
	/*06*/scr_data_crear_pollo("Chick", "", 0);
	#macro pollo_chick 6
	/*07*/scr_data_crear_pollo("Chird", "", 0);
	#macro pollo_chird 7
	/*08*/scr_data_crear_pollo("Cloudy", "", 0);
	#macro pollo_cloudy 8
	/*09*/scr_data_crear_pollo("Cow", "", 0);
	#macro pollo_cow 9
	/*10*/scr_data_crear_pollo("Dinami", "", 0);
	#macro pollo_dinami 10
	/*11*/scr_data_crear_pollo("Drago", "", 0);
	#macro pollo_drago 11
	/*12*/scr_data_crear_pollo("Egi", "", 0);
	#macro pollo_egi 12
	/*13*/scr_data_crear_pollo("Electron", "", 0);
	#macro pollo_electron 13
	/*14*/scr_data_crear_pollo("FBarce", "", 0);
	#macro pollo_fBarce 14
	/*15*/scr_data_crear_pollo("FNapoli", "", 0);
	#macro pollo_fNapoli 15
	/*16*/scr_data_crear_pollo("Fooster", "", 0);
	#macro pollo_fooster 16
	/*17*/scr_data_crear_pollo("FRealm", "", 0);
	#macro pollo_fRealm 17
	/*18*/scr_data_crear_pollo("FUni", "", 0);
	#macro pollo_fUni 18
	/*19*/scr_data_crear_pollo("Gallo", "", 0);
	#macro pollo_gallo 19
	/*20*/scr_data_crear_pollo("Gold", "", 0);
	#macro pollo_gold 20
	/*21*/scr_data_crear_pollo("Grassy", "", 0);
	#macro pollo_grassy 21
	/*22*/scr_data_crear_pollo("GreenVideoInc", "", 0);
	#macro pollo_greenVideoInc 22
	/*23*/scr_data_crear_pollo("Grey", "", 0);
	#macro pollo_grey 23
	/*24*/scr_data_crear_pollo("Hueva", "", 0);
	#macro pollo_hueva 24
	/*25*/scr_data_crear_pollo("Iguanard", "", 0);
	#macro pollo_iguanard 25
	/*26*/scr_data_crear_pollo("Invert", "", 0);
	#macro pollo_invert 26
	/*27*/scr_data_crear_pollo("Iris", "", 0);
	#macro pollo_iris 27
	/*28*/scr_data_crear_pollo("Jeff", "", 0);
	#macro pollo_jeff 28
	/*29*/scr_data_crear_pollo("Jhonatan", "", 0);
	#macro pollo_jhonatan 29
	/*30*/scr_data_crear_pollo("Law", "", 0);
	#macro pollo_law 30
	/*31*/scr_data_crear_pollo("LockHolm", "", 0);
	#macro pollo_lockHolm 31
	/*32*/scr_data_crear_pollo("Loko", "", 0);
	#macro pollo_loko 32
	/*33*/scr_data_crear_pollo("Looster", "", 0);
	#macro pollo_looster 33
	/*34*/scr_data_crear_pollo("Magma", "", 0);
	#macro pollo_magma 34
	/*35*/scr_data_crear_pollo("Mali", "", 0);
	#macro pollo_mali 35
	/*36*/scr_data_crear_pollo("Manic", "", 0);
	#macro pollo_manic 36
	/*37*/scr_data_crear_pollo("Max", "", 0);
	#macro pollo_max 37
	/*38*/scr_data_crear_pollo("McDuck", "", 0);
	#macro pollo_mcDuck 38
	/*39*/scr_data_crear_pollo("Meta", "", 0);
	#macro pollo_meta 39
	/*40*/scr_data_crear_pollo("MetaSoldier", "", 0);
	#macro pollo_metaSoldier 40
	/*41*/scr_data_crear_pollo("Monocrom", "", 0);
	#macro pollo_monocrom 41
	/*42*/scr_data_crear_pollo("Monster", "", 0);
	#macro pollo_monster 42
	/*43*/scr_data_crear_pollo("Nave", "", 0);
	#macro pollo_nave 43
	/*44*/scr_data_crear_pollo("NinjaCold", "", 0);
	#macro pollo_ninjaCold 44
	/*45*/scr_data_crear_pollo("Pencil", "", 0);
	#macro pollo_pencil 45
	/*46*/scr_data_crear_pollo("Pengu", "", 0);
	#macro pollo_pengu 46
	/*47*/scr_data_crear_pollo("Pollier", "", 0);
	#macro pollo_pollier 47
	/*48*/scr_data_crear_pollo("Pollisor", "", 0);
	#macro pollo_pollisor 48
	/*49*/scr_data_crear_pollo("Porki", "", 0);
	#macro pollo_porki 49
	/*50*/scr_data_crear_pollo("Rafa", "", 0);
	#macro pollo_rafa 50
	/*51*/scr_data_crear_pollo("Raro", "", 0);
	#macro pollo_raro 51
	/*52*/scr_data_crear_pollo("RickRoll", "", 0);
	#macro pollo_rickRoll 52
	/*53*/scr_data_crear_pollo("Rooster", "", 0);
	#macro pollo_rooster 53
	/*54*/scr_data_crear_pollo("ShiKen", "", 0);
	#macro pollo_shiKen 54
	/*55*/scr_data_crear_pollo("Silver", "", 0);
	#macro pollo_silver 55
	/*56*/scr_data_crear_pollo("Snick", "", 0);
	#macro pollo_snick 56
	/*57*/scr_data_crear_pollo("Snow", "", 0);
	#macro pollo_snow 57
	/*58*/scr_data_crear_pollo("Phantom", "", 0);
	#macro pollo_phantom 58
	/*59*/scr_data_crear_pollo("Toraishi", "", 0);
	#macro pollo_toraishi 59
	/*60*/scr_data_crear_pollo("Vio", "", 0);
	#macro pollo_vio 60
	/*61*/scr_data_crear_pollo("Voltio", "", 0);
	#macro pollo_voltio 61
	/*62*/scr_data_crear_pollo("Warrior", "", 0);
	#macro pollo_warrior 62
	/*63*/scr_data_crear_pollo("WarriorSuper", "", 0);
	#macro pollo_warriorSuper 63
	/*64*/scr_data_crear_pollo("Zeo", "", 0);
	#macro pollo_zeo 64
	/*65*/scr_data_crear_pollo("Zombie", "", 0);
	#macro pollo_zombie 65
	/*66*/scr_data_crear_pollo("Bjorn", "", 0);
	#macro pollo_bjorn 66
	/*67*/scr_data_crear_pollo("Boomy", "", 0);
	#macro pollo_boomy 67
	/*68*/scr_data_crear_pollo("Cay", "", 0);
	#macro pollo_cay 68
	/*69*/scr_data_crear_pollo("DerpSoul", "", 0);
	#macro pollo_derpSoul 69
	/*70*/scr_data_crear_pollo("Duncan", "", 0);
	#macro pollo_duncan 70
	/*71*/scr_data_crear_pollo("EasyEast", "", 0);
	#macro pollo_easyEast 71
	/*72*/scr_data_crear_pollo("Eustavio", "", 0);
	#macro pollo_eustavio 72
	/*73*/scr_data_crear_pollo("Gatarlos", "", 0);
	#macro pollo_gatarlos 73
	/*74*/scr_data_crear_pollo("Jabo", "", 0);
	#macro pollo_jabo 74
	/*75*/scr_data_crear_pollo("Miedo", "", 0);
	#macro pollo_miedo 75
	/*76*/scr_data_crear_pollo("Plumillas", "", 0);
	#macro pollo_plumillas 76
	/*77*/scr_data_crear_pollo("Polliro", "", 0);
	#macro pollo_polliro 77
	/*78*/scr_data_crear_pollo("Prisma", "", 0);
	#macro pollo_prisma 78
	/*79*/scr_data_crear_pollo("Robotop", "", 0);
	#macro pollo_robotop 79
	/*80*/scr_data_crear_pollo("Siul", "", 0);
	#macro pollo_siul 80
	
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
function scr_pollo_dame_scc(_id)
{
	var _string1 = "sprSCCskin";
	var _string2 = scr_dame_dato(control.data_pollo, _id, "nombre");
	var _ind = asset_get_index(_string1 + _string2);
	return (_ind == -1) ? sprCCRatkEgg : _ind;
}
#endregion
#region música
function scr_data_musica()
{
	data_musica = ds_list_create();
	/*00*/scr_data_crear_musica("Minigame1", scr_crear_lista(ostCC1mg1midiA, ostCC1mg1midiB));
	#macro mus_minigame1 0
	/*01*/scr_data_crear_musica("Minigame2", scr_crear_lista(ostCC1mg2midi));
	#macro mus_minigame2 1
	/*02*/scr_data_crear_musica("Minigame3", scr_crear_lista(ostCC1mg3midi));
	#macro mus_minigame3 2
	/*03*/scr_data_crear_musica("Menú", scr_crear_lista(ostCC1mn1midi));
	#macro mus_menu 3
	/*04*/scr_data_crear_musica("Opening1", scr_crear_lista(ostCC1op1midi));
	#macro mus_opening1 4
	/*05*/scr_data_crear_musica("Opening2", scr_crear_lista(ostCC1op2midiA, ostCC1op2midiB));
	#macro mus_opening2 5
	/*06*/scr_data_crear_musica("Zona1", scr_crear_lista(ostCC1zn1midiA, ostCC1zn1midiB));
	#macro mus_zona1 6
	/*07*/scr_data_crear_musica("Zona2", scr_crear_lista(ostCC1zn2midi));
	#macro mus_zona2 7
	/*08*/scr_data_crear_musica("Zona3", scr_crear_lista(ostCC1zn3midiA, ostCC1zn3midiB));
	#macro mus_zona3 8
	/*09*/scr_data_crear_musica("Zona4", scr_crear_lista(ostCC1zn4midi));
	#macro mus_zona4 9
	/*10*/scr_data_crear_musica("Zona5", scr_crear_lista(ostCC1zn5midiA, ostCC1zn5midiB));
	#macro mus_zona5 10
	/*11*/scr_data_crear_musica("Zona6", scr_crear_lista(ostCC1zn6midiA, ostCC1zn6midiB));
	#macro mus_zona6 11
	/*12*/scr_data_crear_musica("Zona7", scr_crear_lista(ostCC1zn7midiA, ostCC1zn7midiB));
	#macro mus_zona7 12
	/*13*/scr_data_crear_musica("Zona8", scr_crear_lista(ostCC1zn8midi));
	#macro mus_zona8 13
	/*14*/scr_data_crear_musica("Zona hogar", scr_crear_lista(ostCC1zncmidi));
	#macro mus_zona_hogar 14
	/*15*/scr_data_crear_musica("Zona fábrica", scr_crear_lista(ostCC1znfmidiA, ostCC1znfmidiB));
	#macro mus_zona_fabrica 15
}
function scr_data_crear_musica(nombre, lista)
{
	var _paquete = ds_map_create();
	_paquete[?"nombre"] = nombre;
	_paquete[?"lista"] = lista;
	ds_list_add(control.data_musica, _paquete);
}
#endregion