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
#region música
switch (room)
{
	case(rmZn0Home):
	{
		scr_musica(mus_zona_hogar);
		break;
	}
	case(rmZn1Lv1a):
	{
		scr_musica(mus_zona1);
		break;
	}
	case(rmZn2Lv1a):
	{
		scr_musica(mus_zona2);
		break;
	}
	case(rmZn3Lv1a):
	{
		scr_musica(mus_zona3);
		break;
	}
	case(rmZn4Lv1a):
	{
		scr_musica(mus_zona4);
		break;
	}
	case(rmZn5Lv1a):
	{
		scr_musica(mus_zona5);
		break;
	}
	case(rmZn6Lv1a):
	{
		scr_musica(mus_zona6);
		break;
	}
	case(rmZn7Lv1a):
	{
		scr_musica(mus_zona7);
		break;
	}
	case(rmZn8Lv1a):
	{
		scr_musica(mus_zona8);
		break;
	}
	case(rmZnfLv1a):
	{
		scr_musica(mus_zona_fabrica);
		break;
	}
}
#endregion
#region bloque
#endregion