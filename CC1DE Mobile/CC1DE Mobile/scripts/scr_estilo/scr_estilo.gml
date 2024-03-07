function scr_estilo_bloque()
{	
	if (control.zona_actual == zona_fabrica)
	{
		spr_cc1 = asset_get_index("sprCC1znfBlock");
		spr_cc2 = asset_get_index("sprCCRznfBlock");
		spr_cc3 = asset_get_index("sprCC1znfBlock");
	}
	else
	{
		spr_cc1 = asset_get_index("sprCC1zn"+string(control.zona_actual)+"Block");
		spr_cc2 = asset_get_index("sprCCRzn"+string(control.zona_actual)+"Block");
		spr_cc3 = asset_get_index("sprCC1zn"+string(control.zona_actual)+"Block");
	}
}

function scr_estilo_poder()
{
	spr_cc1 = sprCC1atkShurikenGrass;
	spr_cc2 = sprCCRatkShurikenGrass;
	switch (control.zona_actual)
	{
		case(zona_campo):
		{
			spr_cc1 = sprCC1atkShurikenGrass;
			spr_cc2 = sprCCRatkShurikenGrass;
			break;
		}
		case(zona_volcan):
		{
			spr_cc1 = sprCC1atkShurikenFire;
			spr_cc2 = sprCCRatkShurikenFire;
			break;
		}
		case(zona_cielo):
		{
			spr_cc1 = sprCC1atkShurikenFrozen;
			spr_cc2 = sprCCRatkShurikenFrozen;
			break;
		}
		case(zona_desierto):
		{
			spr_cc1 = sprCC1atkShurikenDesert;
			spr_cc2 = sprCCRatkShurikenDesert;
			break;
		}
		case(zona_nevada):
		{
			spr_cc1 = sprCC1atkShurikenFrozen;
			spr_cc2 = sprCCRatkShurikenFrozen;
			break;
		}
		case(zona_cueva):
		{
			spr_cc1 = sprCC1atkShurikenFrozen;
			spr_cc2 = sprCCRatkShurikenFrozen;
			break;
		}
		case(zona_infierno):
		{
			spr_cc1 = sprCC1atkEggFire;
			spr_cc2 = sprCC1atkEggFire;
			break;
		}
		case(zona_pesadilla):
		{
			spr_cc1 = sprCC1atkEggDark;
			spr_cc2 = sprCC1atkEggDark;
			break;
		}
	}
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