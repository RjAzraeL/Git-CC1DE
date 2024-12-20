#region dibujar HUD
var _xx = obj_camara.linea_x - scr_x();
for (var i = 0; i < control.vida; i++)
{
	scr_dibujar(spr_cc2, spr_cc1, 64, 64, _xx , 24+32*i,  12+sin(valor_seno+i));
}
var _carga = 0;
var _blend = c_gray;
if (scr_existe(obj_jugador))
{
	for (var i = 0 ; i < 3; i++)
	{
		_carga = 1-(obj_jugador.poder_enfriamiento[i]/obj_jugador.poder_enfriamiento_total[i]);
		if (_carga == 1)
		{
			_blend = c_white;
		}
		scr_dibujar(sprite_poder2[i], sprite_poder1[i], 32, 32, _xx, 24 + (32 * i), 64 + sin(valor_seno), 0, _blend, 1, _carga, _carga, 1, 1, 24, true);
	}
}

if (golpeado > 0)
{
	golpeado--;
	scr_dibujar(spr_cc2, spr_cc1, 64, 64, _xx ,  24+32*(control.vida), 12+sin(valor_seno+control.vida), 0, c_red, (golpeado*.5)/60);
}
if (keyboard_check(vk_f1))
{
	var _i = 320;
	draw_text(32,_i,instance_number(all));
	draw_text(32,_i-32,nombre);
	draw_text(32,_i-64,round(fps_real));
	draw_text(32,_i-96,control.estilo_actual);
}
#endregion