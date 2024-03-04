function scr_dibujar2(_spr1, _spr2, _anchura, _altura, _linea_x , __x, __y, _index = image_index)
{
	var xx = _anchura;
	var yy = _altura;
	var xx2 = xx/2;
	var yy2 = yy/2;
	var sprccr = _spr1;
	var sprcc1 = _spr2;
	var _sx = abs(escala_x_real);
	var _sy = escala_y_real;
	var _x = clamp(_linea_x - __x +xx2, 0, xx);
	var _x1 = __x + lengthdir_x(_x*_sx, angulo_real) - lengthdir_x(xx2*_sx, angulo_real) - lengthdir_x(yy2*_sy, angulo_real-90);
	var _y1 = __y + lengthdir_y(_x*_sx, angulo_real) - lengthdir_y(xx2*_sx, angulo_real) - lengthdir_y(yy2*_sy, angulo_real-90);
	var _left = _x*_sx;
	var _top = 0;
	var _width = xx - _x;
	var _height = yy;
	draw_sprite_general(sprccr, _index, _left, _top, xx -_x, yy, _x1, _y1, _sx , _sy, angulo_real, image_blend, image_blend, image_blend, image_blend, image_alpha);
	var _x2 = clamp(_linea_x-__x+xx2, 0, xx);
	var _left2 = 0;
	if (_x2 > 0)
	{
		draw_sprite_general(sprcc1, _index, _left2, 0, _x, yy, __x - lengthdir_x(xx2*_sx, angulo_real) - lengthdir_x(yy2*_sy, angulo_real-90), __y - lengthdir_y(xx2*_sx, angulo_real) - lengthdir_y(yy2*_sy, angulo_real-90), _sx, _sy, angulo_real, image_blend, image_blend, image_blend, image_blend, image_alpha);
	}
}


function scr_dibujar(_spr2, _spr1, _anchura, _altura, _linea_x , __x, __y, _index = image_index, _color = image_blend, _alpha = image_alpha, _escalax = escala_x_real, _escalay = escala_y_real)
{
	if (point_distance(obj_camara.x, obj_camara.y, __x, __y) <= control.rango or object_index == obj_camara)
	{
		var _c = _color;
		var _af = _alpha;
		if (control.estilo_actual != 0)
		{
			var _aux = _spr2;
			_spr2 = _spr1;
			_spr1 = _aux;
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
		#endregion
		#region transformation
		var _lf1 = _v1;
		var _lf2 = 0;
		var _lw1 = _w1 - _v1;
		var _lw2 = _v1;
		#endregion
		#region posición
		var _px1 = __x - lengthdir_x(_ww2 * _sx, angulo_real) + lengthdir_x(_v1 * _sx, angulo_real) - lengthdir_x(_hh2 * _sy, angulo_real-90);
		var _py1 = __y - lengthdir_y(_ww2 * _sx, angulo_real) + lengthdir_y(_v1 * _sx, angulo_real) - lengthdir_y(_hh2 * _sy, angulo_real-90);
		var _px2 = __x - lengthdir_x(_ww2 * _sx, angulo_real) - lengthdir_x(_hh2 * _sy, angulo_real - 90);
		var _py2 = __y - lengthdir_y(_ww2 * _sx, angulo_real) - lengthdir_y(_hh2 * _sy, angulo_real - 90);
		#endregion
		draw_sprite_general(_spr1, _index, _lf1, 0, _lw1 , _h1, _px1, _py1, _sx, _sy, _an, _c, _c, _c, _c, _af);
		draw_sprite_general(_spr2, _index, _lf2, 0, _lw2 , _h2, _px2, _py2, _sx, _sy, _an, _c, _c, _c, _c, _af);
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