#region dibujar
draw_sprite_ext(sprMenuArrow, 0, boton_izq_x, mitad + sin(valor_seno), 3, 3, 0, c_white, 1);
draw_sprite_ext(sprMenuArrow, 0, boton_der_x, mitad + sin(valor_seno), -3, 3, 0, c_white, 1);
draw_text(medio, 32, "ZONA " + string(posicion));
#endregion