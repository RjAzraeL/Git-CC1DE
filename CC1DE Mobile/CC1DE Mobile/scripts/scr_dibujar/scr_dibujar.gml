function scr_dibujar_bloque(_anchura, _altura, _linea_x , __x, __y, _index = image_index)
{
	#region estilo
	var _spr2 = spr_cc1;
	var _spr1 = spr_cc2;
	var _scc_var = 0;
	var _escalax = escala_x_real;
	var _escalay = escala_y_real;
	var _af = image_alpha;
	var _lateral = false;
	var _lateralalt = false;
	var _under = false;
	var _low = false;
	var _lateral_spr = spr_cc3_lat;
	if (control.estilo_actual == 2)
	{
		_spr2 = spr_cc1;
		_spr1 = spr_cc3;
		_scc_var = 1;
	}
	if (control.estilo_actual == 0)
	{
		_spr2 = spr_cc2;
		_spr1 = spr_cc1;
	}
	if (control.estilo_actual == 1)
	{
		_spr2 = spr_cc3;
		_spr1 = spr_cc2;
		_scc_var = 2;
	}
	#region scc
	if (_scc_var != 0)
	{
		var _costado_i = !collision_point(__x-32, __y, par_solido, false, false);
		var _costado_d = !collision_point(__x+32, __y, par_solido, false, false);
		var _under = !collision_point(__x, __y+32, par_solido, false, false);
		var _indice = (collision_point(__x, __y-32, par_solido, false, false)) ? 1 : 0;
		var _lateral_spr = spr_cc3_lat;
		if (_scc_var == 1)
		{
			if (_indice == 1)
			{
				_low = true;
				_lateralalt = true;
				_spr1 = spr_cc3_low;
				_lateral_spr = spr_cc3_latlat;
			}
		}
		if (_scc_var == 2)
		{
			if (_indice == 1)
			{
				_low = true;
				_lateralalt = true;
				_spr2 = spr_cc3_low;
				_lateral_spr = spr_cc3_latlat;
			}
		}
	}
	#endregion
	#endregion
	var _x2 = __x;
	var _alpha1 = image_alpha;
	var _alpha2 = image_alpha;
	var _c = image_blend;
	#region tamaño
	var _w1 = sprite_get_width(_spr1);
	var _h1 = sprite_get_height(_spr1);
	var _w2 = sprite_get_width(_spr2);
	var _h2 = sprite_get_height(_spr2);
	var _ww2 = _w1/2;
	var _hh2 = _h1/2;
	#endregion
	#region escala y rotación
	var _sx = _escalax;
	var _sy = _escalay;
	var _an = angulo_real;
	#endregion
	#region variable
	var _v1 = clamp( _linea_x - __x + _ww2, 0, _w1 );
	var _v2 = clamp( _linea_x - _x2 + _ww2, 0, _w1 );
	#endregion
	#region transformation
	var _lf1 = _v1;
	var _lf2 = 0;
	var _lw1 = _w1 - _v1;
	var _lw2 = _v2;
	#endregion
	#region posición
	var _px1 = __x - lengthdir_x(_ww2 * _sx, angulo_real) + lengthdir_x(_v1 * _sx, angulo_real) - lengthdir_x(_hh2 * _sy, angulo_real-90);
	var _py1 = __y - lengthdir_y(_ww2 * _sx, angulo_real) + lengthdir_y(_v1 * _sx, angulo_real) - lengthdir_y(_hh2 * _sy, angulo_real-90);
	var _px2 = _x2 - lengthdir_x(_ww2 * _sx, angulo_real) - lengthdir_x(_hh2 * _sy, angulo_real - 90);
	var _py2 = __y - lengthdir_y(_ww2 * _sx, angulo_real) - lengthdir_y(_hh2 * _sy, angulo_real - 90);
	#endregion
	draw_sprite_general(_spr1, _index, _lf1, 0, _lw1 , _h1, _px1, _py1, _sx, _sy, _an, _c, _c, _c, _c, _alpha1);
	draw_sprite_general(_spr2, _index, _lf2, 0, _lw2 , _h2, _px2, _py2, _sx, _sy, _an, _c, _c, _c, _c, _alpha2);
	#region extras
	var _ye = 3;
	var _col = (collision_point(__x, __y-32, par_solido, false, false));
	if (_scc_var == 1)
	{
		var _var = _lateral_spr
		var _y = 2;
		if (_costado_d)
		{
			draw_sprite_general(_lateral_spr, _index, _lf1, 0, _lw1 , _h1, _px1 + 32, _py1 + _y - _ye, _sx, _sy, _an, _c, _c, _c, _c, _af);
		}
		if (_costado_i)
		{
			draw_sprite_general(_lateral_spr, _index, _lf1, 0, _lw1 , _h1, _px1, _py1 + _y - _ye, -_sx, _sy, _an, _c, _c, _c, _c, _af);
		}
		if (_under)
		{
			draw_sprite_general(spr_cc3_under, _index, _lf1, 0, _lw1 , _h1, _px1, _py1 + 32 - _ye, _sx, _sy, _an, _c, _c, _c, _c, _af);
		}
	}
	if (_scc_var == 2)
	{
		var _y = 2;
		if (_costado_d)
		{
			draw_sprite_general(_lateral_spr, _index, _lf2, 0, _lw2 , _h2, _px2 + 32, _py2 + _y - _ye, _sx, _sy, _an, _c, _c, _c, _c, _af);
		}
		if (_costado_i)
		{
			draw_sprite_general(_lateral_spr, _index, _lf2, 0, _lw2 , _h2, _px2, _py2 + _y - _ye, -_sx, _sy, _an, _c, _c, _c, _c, _af);
		}
		if (_under)
		{
			draw_sprite_general(spr_cc3_under, _index, _lf2, 0, _lw2 , _h2, _px2, _py2 + 32 - _ye, _sx, _sy, _an, _c, _c, _c, _c, _af);
		}
	}
	if (!_col)
	{
		if (_spr2 == sprCCRzn1Block)
		{
			draw_sprite_general(sprCCRzn1Block2, _index, _lf2, 0, _lw2 , _h2, _px2, _py2 - _ye, _sx, _sy, _an, _c, _c, _c, _c, _af);
		}
		if (_spr1 == sprCCRzn1Block)
		{
			draw_sprite_general(sprCCRzn1Block2, _index, _lf1, 0, _lw1 , _h1, _px1, _py1 - _ye, _sx, _sy, _an, _c, _c, _c, _c, _af);
		}
		#region scc
		#endregion
	}
	#endregion
}
function scr_dibujar(_spr2, _spr1, _anchura, _altura, _linea_x , __x, __y, _index = image_index, _color = image_blend, _alpha = image_alpha, _escalax = escala_x_real, _escalay = escala_y_real, _alpha1 = 1, _alpha2 = 1, _x2 = __x, _poder = false)
{
	if (point_distance(obj_camara.x, obj_camara.y, __x, __y) <= control.rango or object_index == obj_camara)
	{
		var _c = _color;
		var _af = _alpha;
		if (object_index != par_fondo and !_poder)
		{
			if (control.estilo_actual == 2)
			{
				_spr2 = spr_cc1;
				_spr1 = spr_cc3;
			}
			if (control.estilo_actual == 0)
			{
				_spr2 = spr_cc2;
				_spr1 = spr_cc1;
			}
			if (control.estilo_actual == 1)
			{
				_spr2 = spr_cc3;
				_spr1 = spr_cc2;
			}
		}
		if (_poder)
		{
			for (var i = 0; i < 3; i++)
			{
				if (control.estilo_actual == 2)
				{
					_spr2 = sprite_poder1[i];
					_spr1 = sprite_poder3[i];
				}
				if (control.estilo_actual == 0)
				{
					_spr2 = sprite_poder2[i];
					_spr1 = sprite_poder1[i];
				}
				if (control.estilo_actual == 1)
				{
					_spr2 = sprite_poder3[i];
					_spr1 = sprite_poder2[i];
				}
			}
		}
		#region tamaño
		var _w1 = sprite_get_width(_spr1);
		var _h1 = sprite_get_height(_spr1);
		var _w2 = sprite_get_width(_spr2);
		var _h2 = sprite_get_height(_spr2);
		var _ww2 = _w1/2;
		var _hh2 = _h1/2;
		#endregion
		#region escala y rotación
		var _sx = _escalax;
		var _sy = _escalay;
		var _an = angulo_real;
		#endregion
		#region variable
		var _v1 = clamp( _linea_x - __x + _ww2, 0, _w1 );
		var _v2 = clamp( _linea_x - _x2 + _ww2, 0, _w1 );
		#endregion
		#region transformation
		var _lf1 = _v1;
		var _lf2 = 0;
		var _lw1 = _w1 - _v1;
		var _lw2 = _v2;
		#endregion
		#region posición
		var _px1 = __x - lengthdir_x(_ww2 * _sx, angulo_real) + lengthdir_x(_v1 * _sx, angulo_real) - lengthdir_x(_hh2 * _sy, angulo_real-90);
		var _py1 = __y - lengthdir_y(_ww2 * _sx, angulo_real) + lengthdir_y(_v1 * _sx, angulo_real) - lengthdir_y(_hh2 * _sy, angulo_real-90);
		var _px2 = _x2 - lengthdir_x(_ww2 * _sx, angulo_real) - lengthdir_x(_hh2 * _sy, angulo_real - 90);
		var _py2 = __y - lengthdir_y(_ww2 * _sx, angulo_real) - lengthdir_y(_hh2 * _sy, angulo_real - 90);
		#endregion
		draw_sprite_general(_spr1, _index, _lf1, 0, _lw1 , _h1, _px1, _py1, _sx, _sy, _an, _c, _c, _c, _c, _alpha1);
		draw_sprite_general(_spr2, _index, _lf2, 0, _lw2 , _h2, _px2, _py2, _sx, _sy, _an, _c, _c, _c, _c, _alpha2);
		#region extras
		var _ye = 3;
		var _col = (collision_point(__x, __y-32, par_solido, false, false));
		if (!_col)
		{
			if (_spr2 == sprCCRzn1Block)
			{
				draw_sprite_general(sprCCRzn1Block2, _index, _lf2, 0, _lw2 , _h2, _px2, _py2 - _ye, _sx, _sy, _an, _c, _c, _c, _c, _af);
			}
			if (_spr1 == sprCCRzn1Block)
			{
				draw_sprite_general(sprCCRzn1Block2, _index, _lf1, 0, _lw1 , _h1, _px1, _py1 - _ye, _sx, _sy, _an, _c, _c, _c, _c, _af);
			}
		}
		#endregion
	}
}