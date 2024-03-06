#region dibujar
orbital += 5;
if (orbital >= 360)
{
	orbital = 0;
}
scr_dibujar(spr_cc2, spr_cc1, 32, 32, obj_camara.linea_x, x + lengthdir_x(8, orbital), y + lengthdir_y(8, orbital));
#endregion









