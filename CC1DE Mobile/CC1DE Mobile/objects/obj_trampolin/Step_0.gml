#region salto
if (salto > 0)
{
	cabeza_y = obj_camara.valor_seno_real*2;
	salto--;
}
else
{
	cabeza_y = lerp(cabeza_y, 0, .1);
}
#endregion