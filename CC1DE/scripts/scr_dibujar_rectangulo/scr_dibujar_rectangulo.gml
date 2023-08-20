///@arg alpha
function scrDrawRectangle(Alpha)
{
	#region Dibujar rectángulo
	draw_set_alpha(Alpha);
	draw_set_color(c_black);
	draw_rectangle(0 , 0 , room_width , room_height , false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	#endregion
}
///@arg alpha
function scrDrawRectangleWhite(Alpha)
{
	#region Dibujar rectángulo
	draw_sprite_ext(sprPuntoBlanco , 0 , 0 , 0 , room_width , room_height , 0 , c_white , Alpha);
	#endregion
}