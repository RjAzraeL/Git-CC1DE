#region dibujar

for (var i = 0; i < image_xscale; i++)
{
	for (var j = 0; j < image_yscale; j++)
	{
		var _x = x+16+32*i;
		var _y = y+16+32*j;
		if (point_distance(obj_camara.x, obj_camara.y, _x, _y) <= 1000)
		{
			var _sprite = sprCC1zn1Block;
			var _offset = 0;
			var _y_extra = (collision_rectangle(_x-8, _y-32, _x+8, _y-16, par_pollo, true, false)) ? 0: 0;
		
			//draw_sprite_general(spr_bloque_remasterizacion, _y_extra , 0, 0, 32, 35 , _x-16, _y-19, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
			//draw_sprite_general(spr_bloque_original, 0, 0, 0, 32, clamp(obj_camara.linea_y-_y+16, 0, 32) , _x-16, _y-16, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
		
			//draw_sprite_general(spr_cc2, 0 , 0, 0, 32, 35 , _x-16, _y-19+_y_extra, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
			//draw_sprite_general(spr_cc1, 0, 0, 0, clamp(obj_camara.linea_x-_x+16, 0, 32), 32 , _x-16, _y-16, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
			var seed = _x + _y * 10000;
			random_set_seed(seed);
			var valor_random = irandom(3);
			scr_dibujar(spr_cc2, spr_cc1, 32, 32, obj_camara.linea_x, _x, _y, valor_random);
			if (obj_camara.linea_y > _y)
			{
				var _offset = 3;
			}
		}
	}
}
/*
for (var i = 0; i < image_xscale; i++)
{
	for (var j = 0; j < image_yscale; j++)
	{
		var _x = x+16+32*i;
		var _y = y+16+32*j;
		if (point_distance(obj_camara.x, obj_camara.y, _x, _y) <= 1200)
		{
			var seed = _x + _y * 10000;
			var _cantidad = 6;
			random_set_seed(seed);
			var valor_random = irandom(3);
			var _indice = (collision_point(_x, _y-32, par_solido, false, false)) ? 1 : 0;
			var _y_extra = (collision_rectangle(_x-8, _y-32, _x+8, _y-16, par_pollo, true, false)) ? 1: 0;
			draw_sprite(spr_terreno_campo, _indice+valor_random*_cantidad, _x, _y + _y_extra);
			if (_indice == 0)
			{
				draw_sprite_ext(spr_terreno_campo, 5+valor_random*_cantidad, _x, _y +_y_extra-32 , 1, 1, 0, image_blend, image_alpha);
			}
			if (!collision_point(_x-32, _y, par_solido, false, false))
			{
				draw_sprite_ext(spr_terreno_campo, 4+valor_random*_cantidad, _x-32, _y +_y_extra , -1, 1, 0, image_blend, image_alpha);
			}
			if (!collision_point(_x+32, _y, par_solido, false, false))
			{
				draw_sprite_ext(spr_terreno_campo, 4+valor_random*_cantidad, _x+32, _y +_y_extra , 1, 1, 0, image_blend, image_alpha);
			}
			if (!collision_point(_x, _y+32, par_solido, false, false))
			{
				draw_sprite(spr_terreno_campo, 2+valor_random*_cantidad, _x, _y+32);
			}
			if (!collision_point(_x-32, _y, par_solido, false, false) and _indice == 0)
			{
				draw_sprite_ext(spr_terreno_campo, 3+valor_random*_cantidad, _x-32, _y +_y_extra , -1, 1, 0, image_blend, image_alpha);
			}
			if (!collision_point(_x+32, _y, par_solido, false, false) and _indice == 0)
			{
				draw_sprite_ext(spr_terreno_campo, 3+valor_random*_cantidad, _x+32, _y + _y_extra, 1, 1, 0, image_blend, image_alpha);
			}
			if (collision_point(_x-32, _y, par_solido, false, false) and collision_point(_x-32, _y-32, par_solido, false, false) and _indice == 0)
			{
				draw_sprite_ext(spr_terreno_campo, 3+valor_random*_cantidad, _x-32, _y +_y_extra , -1, 1, 0, image_blend, image_alpha);
			}
			if (collision_point(_x-32, _y, par_solido, false, false) and !collision_point(_x-32, _y-32, par_solido, false, false))
			{
				draw_sprite_ext(spr_terreno_campo, 3+valor_random*_cantidad, _x, _y +_y_extra , 1, 1, 0, image_blend, image_alpha);
			}
		}
	}
}
*/
#endregion
