function scr_estilo_bloque()
{	
	spr_cc1 = asset_get_index("sprCC1zn"+string(control.zona_actual)+"Block");
	spr_cc2 = asset_get_index("sprCCRzn"+string(control.zona_actual)+"Block");
	spr_cc3 = asset_get_index("sprCC1zn"+string(control.zona_actual)+"Block");
}

function scr_estilo_enemigo1()
{
	if (control.zona_actual != zona_hogar)
	{
		spr_cc1 = asset_get_index("sprCC1zn"+string(control.zona_actual)+"Enemie1");
		spr_cc2 = asset_get_index("sprCCRzn"+string(control.zona_actual)+"Enemie1");
		spr_cc3 = asset_get_index("sprCC1zn"+string(control.zona_actual)+"Enemie1");
	}
}

function scr_estilo_enemigo2()
{	
	if (control.zona_actual != zona_hogar)
	{
		spr_cc1 = asset_get_index("sprCC1zn"+string(control.zona_actual)+"Enemie2");
		spr_cc2 = asset_get_index("sprCCRzn"+string(control.zona_actual)+"Enemie2");
		spr_cc3 = asset_get_index("sprCC1zn"+string(control.zona_actual)+"Enemie2");
	}
}

function scr_estilo_jefe()
{	
	if (control.zona_actual != zona_hogar)
	{
		spr_cc1 = asset_get_index("sprCC1zn"+string(control.zona_actual)+"Boss");
		spr_cc2 = asset_get_index("sprCCRzn"+string(control.zona_actual)+"Boss");
		spr_cc3 = asset_get_index("sprCC1zn"+string(control.zona_actual)+"Boss");
	}
}