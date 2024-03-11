function scr_generar_flama()
{
	if (control.flama_tiempo == 0)
	{
		part_particles_create(control.part_sistema, x+random_range(-4,4), y, control.part_type, 1);
	}
}