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

fondo_velocidad[0] = 0;
fondo_velocidad[1] = 0;
fondo_velocidad[2] = 0;
fondo_velocidad[3] = 0;

color_fondo_actual = c_white;
escala_x_real = 1;
escala_y_real = 1;
angulo_real = 0;
#endregion