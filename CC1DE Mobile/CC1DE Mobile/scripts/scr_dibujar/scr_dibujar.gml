function scr_dibujar(_spr1, _spr2, _anchura, _altura, _linea_x , __x, __y, _index = image_index)
{
	var xx = _anchura;
	var yy = _altura;
	var xx2 = xx/2;
	var sprccr = _spr1;
	var sprcc1 = _spr2;
	var _sx = abs(escala_x_real);
	var _sy = escala_y_real;
	var _x = clamp(_linea_x - __x +xx2, 0, xx);
	var _x1 = __x + lengthdir_x(_x*_sx, angulo_real) - lengthdir_x(xx2*_sx, angulo_real) - lengthdir_x(xx2*_sy, angulo_real-90);
	var _y1 = __y + lengthdir_y(_x*_sx, angulo_real) - lengthdir_y(xx2*_sx, angulo_real) - lengthdir_y(xx2*_sy, angulo_real-90);
	var _left = _x;
	var _top = 0;
	var _width = xx - _x;
	var _height = yy;
	draw_sprite_general(sprccr, _index, _left, _top, xx -_x, yy, _x1, _y1, _sx , _sy, angulo_real, image_blend, image_blend, image_blend, image_blend, image_alpha);
	var _x2 = clamp(_linea_x-__x+xx2, 0, xx);
	if (_x2 > 0)
	{
		draw_sprite_general(sprcc1, _index, 0, 0, _x, yy, __x - lengthdir_x(xx2*_sx, angulo_real) - lengthdir_x(xx2*_sy, angulo_real-90), __y - lengthdir_y(xx2*_sx, angulo_real) - lengthdir_y(xx2*_sy, angulo_real-90), _sx, _sy, angulo_real, image_blend, image_blend, image_blend, image_blend, image_alpha);
	}
}