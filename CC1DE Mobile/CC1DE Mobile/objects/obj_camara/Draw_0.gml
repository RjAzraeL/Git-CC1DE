#region dibujar
draw_line(linea_x,0,linea_x,room_height);
/*
with (obj_solido)
{
	for (var i = 0; i < image_xscale; i++)
	{
		for (var j = 0; j < image_yscale; j++)
		{
			var _x = x+16+32*i;
			var _y = y+16+32*j;
			if (point_distance(obj_camara.x, obj_camara.y, _x, _y) <= 800)
			{
				if (!collision_point(_x, _y+32, par_solido, false, false))
				{
					for (var k = 1; k < 4; k++)
					{
						draw_sprite_ext(spr_terreno_campo, 1, _x, _y+32*k, 1, 1, 0, c_gray, 1);
						draw_sprite_ext(spr_terreno_campo, 4, _x+32, _y+32*k, 1, 1, 0, c_gray, 1);
						draw_sprite_ext(spr_terreno_campo, 4, _x-32, _y+32*k, -1, 1, 0, c_gray, 1);
						if (k==3)
						{
							draw_sprite_ext(spr_terreno_campo, 2, _x, _y+32*(k+1), 1, 1, 0, c_gray, 1);
						}
					}
				}
			}
		}
	}
}
*/
#endregion