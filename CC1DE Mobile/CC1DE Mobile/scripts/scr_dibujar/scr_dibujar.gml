function scr_dibujar(_spr1, _spr2, _anchura, _altura, _linea_x)
{
	var xx = _anchura;
	var yy = _altura;
	var xx2 = xx/2;
	var sprccr = _spr1;
	var sprcc1 = _spr2;
	var _x = clamp(_linea_x - x +xx2, 0, xx);
	draw_sprite_general(sprccr, image_index, _x, 0, xx-_x, xx, x + _x - lengthdir_x(xx2, angulo_real) - lengthdir_x(xx2, angulo_real-90), y - lengthdir_y(xx2, angulo_real) - lengthdir_y(xx2, angulo_real-90), 1 , 1, angulo_real, image_blend, image_blend, image_blend, image_blend, image_alpha);
	draw_sprite_general(sprcc1, image_index, 0, 0, clamp(_linea_x-x+xx2, 0, xx), xx, x - lengthdir_x(xx2, angulo_real) - lengthdir_x(xx2, angulo_real-90), y - lengthdir_y(xx2, angulo_real) - lengthdir_y(xx2, angulo_real-90), 1, 1, angulo_real, image_blend, image_blend, image_blend, image_blend, image_alpha);
}