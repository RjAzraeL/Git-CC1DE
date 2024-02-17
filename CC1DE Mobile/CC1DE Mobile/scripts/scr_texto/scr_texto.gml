///@desc Código para modificar un texto
///@arg x
///@arg y
///@arg texto
///@arg valign
///@arg halign
///@arg fuente
///@arg color_trasero
///@arg color_frontal
///@arg separacion
///@arg ancho
///@arg escala_en_x
///@arg escala_en_y
///@arg angulo
///@arg transparencia
///@arg longitud
function scr_texto(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13 , argument14) 
{
	draw_set_valign(argument3); //Alineacion Vertical
	draw_set_halign(argument4); //Alineacion Horizontal
	draw_set_font(argument5); //Fuente
	draw_set_color(argument6); //Color Trasero
	draw_text_ext_transformed_color(argument0+argument14,argument1+argument14,argument2,argument8,argument9,argument10,argument11,argument12,argument6,argument6,argument6,argument6,argument13); //X, Y y Texto
	draw_set_color(argument7); //Color Frontal
	draw_text_ext_transformed_color(argument0,argument1,argument2,argument8,argument9,argument10,argument11,argument12,argument7,argument7,argument7,argument7,argument13); //X, Y y Texto
}