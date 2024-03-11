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