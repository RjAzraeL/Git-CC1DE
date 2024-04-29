#region seno
valor_seno += valor_seno_aumento;
if (valor_seno >= 2*pi)
{
	valor_seno = (valor_seno - 2*pi);
}
#endregion
#region posición
boton_izq_x2 = 64;
if (posicion <= 0)
{
	boton_izq_x2 = -64;
}
boton_der_x2 = anchura-64;
if (posicion >= total_zonas-1)
{
	boton_der_x2 = anchura+64;
}
boton_izq_x = lerp(boton_izq_x, boton_izq_x2, .2);
boton_der_x = lerp(boton_der_x, boton_der_x2, .2);
#endregion