#region dibujar HUD
var _xx = obj_camara.linea_x - scr_x();
for (var i = 0; i < control.vida; i++)
{
	scr_dibujar(sprccr, sprcc1, 64, 64, _xx , 24+32*i,  12+sin(valor_seno+i));
}
var _carga = 0;
var _blend = c_gray;
if (scr_existe(obj_jugador))
{
	_carga = 1-(obj_jugador.poder_enfriamiento/obj_jugador.poder_enfriamiento_total);
	if (_carga == 1)
	{
		_blend = c_white;
	}
}
scr_dibujar(sprite_poder2, sprite_poder1, 32, 32, _xx, 24, 56 + sin(valor_seno), 0, _blend, 1, _carga, _carga);

if (golpeado > 0)
{
	golpeado--;
	scr_dibujar(sprccr, sprcc1, 64, 64, _xx ,  24+32*(control.vida), 12+sin(valor_seno+control.vida), 0, c_red, (golpeado*.5)/60);
}
if (keyboard_check(vk_f1))
{
	draw_text(64,64,instance_number(all));
}
#endregion