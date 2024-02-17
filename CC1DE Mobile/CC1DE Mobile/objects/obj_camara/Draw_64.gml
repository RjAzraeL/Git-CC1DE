#region dibujar HUD
for (var i = 0; i < control.vida; i++)
{
	draw_sprite(sprite_pollo, 0, 24+32*i, 24+sin(valor_seno+i));
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
draw_sprite_ext(sprite_poder, 0, 24, 56+sin(valor_seno), _carga, _carga, 0, _blend, 1);
if (golpeado > 0)
{
	golpeado--;
	draw_sprite_ext(sprite_pollo, 0, 24+32*(control.vida), 24+sin(valor_seno+control.vida), 1, 1, 0, c_red, (golpeado*.5)/60);
}
#endregion