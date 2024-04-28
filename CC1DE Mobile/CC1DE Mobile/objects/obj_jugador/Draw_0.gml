#region dibujar
scr_dibujar(spr_cc2, spr_cc1, 64, 64, obj_camara.linea_x, x, y-14, indice);
var _limite = sprite_get_number(spr_cc2);
if (ultima_imagen)
{
	scr_dibujar(spr_cc2, spr_cc2, 64, 64, obj_camara.linea_x, x, y-14, _limite-1);
}
if (ultima_dobleimagen)
{
	scr_dibujar(spr_cc2, spr_cc2, 64, 64, obj_camara.linea_x, x, y-14, _limite-2+indice_dobleimagen);
}
#endregion