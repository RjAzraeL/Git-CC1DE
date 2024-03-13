#region variable
zona = control.zona_actual;
estilo_viejo = 0;
fondo[0] = scr_dame_dato(control.data_zona, zona, "fondo1");
fondo[1] = scr_dame_dato(control.data_zona, zona, "fondo2");
fondo[2] = scr_dame_dato(control.data_zona, zona, "fondo3");
fondo[3] = scr_dame_dato(control.data_zona, zona, "fondo4");

color_fondo[0] = scr_dame_dato(control.data_zona, zona, "color1");
color_fondo[1] = scr_dame_dato(control.data_zona, zona, "color2");
color_fondo[2] = scr_dame_dato(control.data_zona, zona, "color3");
color_fondo[3] = scr_dame_dato(control.data_zona, zona, "color4");

_listavelocidad[0] = scr_dame_dato(control.data_zona, zona, "fondovelocidad");
_listavelocidad[1] = scr_dame_dato(control.data_zona, zona, "fondovelocidad2");
_listavelocidad[2] = scr_dame_dato(control.data_zona, zona, "fondovelocidad3");
_listavelocidad[3] = scr_dame_dato(control.data_zona, zona, "fondovelocidad4");

for (var i = 0 ; i < 4 ; i++)
{
	fondo_posicion[i][0] = 0;
	fondo_posicion[i][1] = 0;
	fondo_posicion[i][2] = 0;
	fondo_posicion[i][3] = 0;
}

for (var i = 0 ; i < 4 ; i++)
{
	fondo_velocidad[i][0] = _listavelocidad[i][| 0];
	fondo_velocidad[i][1] = _listavelocidad[i][| 1];
	fondo_velocidad[i][2] = _listavelocidad[i][| 2];
	fondo_velocidad[i][3] = _listavelocidad[i][| 3];
}

color_fondo_actual = c_white;
escala_x_real = 1;
escala_y_real = 1;
angulo_real = 0;
#endregion