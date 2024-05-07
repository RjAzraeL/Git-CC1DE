#region música
scr_musica_repetir(musica_index);
#endregion
#region cambiar pantalla y reiniciar
scr_cambiar_pantalla(vk_f4);
scr_reiniciar_juego(ord("R"));
#endregion
#region temblor
scr_temblor();
#endregion
#region flama
if (flama_tiempo > 0)
{
	flama_tiempo--;
}
else
{
	flama_tiempo = 3;
}
#endregion
#region valor seno
valor_seno += .1;
if (valor_seno >= 2*pi)
{
	valor_seno = 0;
}
valor_seno_real = sin(valor_seno);
#endregion