#region dibujar
for (var i = 0; i < image_xscale; i++)
{
	for (var j = 0; j < image_yscale; j++)
	{
		var _x = x+16+32*i;
		var _y = y+16+32*j;
		scr_dibujar(spr_cc2, spr_cc1, 32, 32, obj_camara.linea_x, _x, _y);
	}
}
#endregion