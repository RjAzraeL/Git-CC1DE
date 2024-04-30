#region dibujar
draw_sprite_ext(sprMenuArrow, 0, boton_izq_x, mitad + sin(valor_seno), 3, 3, 0, c_white, 1);
draw_sprite_ext(sprMenuArrow, 0, boton_der_x, mitad + sin(valor_seno), -3, 3, 0, c_white, 1);
scr_texto(medio, 32, "ZONA " + string(posicion), fa_middle, fa_center, fntNormal, c_black, c_white, 16, 640, 2, 2, 0, 1, 0);
#endregion