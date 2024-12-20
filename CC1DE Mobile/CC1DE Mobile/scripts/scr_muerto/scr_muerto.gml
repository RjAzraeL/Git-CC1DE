function scr_muerto(_x, _y, _vx, _vy, _sprite, _depth, _index, _cc1, _ccr, _scc = _ccr)
{
	var _muerto = instance_create_depth(_x, _y, _depth-1, obj_muerto);
	_muerto.movimiento_horizontal = -sign(_vx);
	_muerto.movimiento_vertical = _vy;
	_muerto.sprite_index = _sprite;
	_muerto.image_index = _index;
	_muerto.spr_cc1 = _cc1;
	_muerto.spr_cc2 = _ccr;
	_muerto.spr_cc3 = _scc;
	_muerto.escala_x_real = escala_x_real;
	_muerto.escala_y_real = escala_y_real;
	_muerto.angulo_real = angulo_real;
	_muerto.image_blend = image_blend;
	_muerto.image_angle = image_angle;
}