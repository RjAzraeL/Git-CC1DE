#region variables
randomize();
scr_data();
temblor = 0;
temblor_intensidad = 5;
temblor_seno = 0;
estilo_viejo = 1;
zona_actual = 0;
estilo_actual = 0;
vida = 5;
resolucion_ancho = 854;
resolucion_alto = 480;
flama_tiempo = 0;
pollo_actual = irandom( ds_list_size(data_pollo)-2 );
scr_escalado(resolucion_ancho, resolucion_alto, 2);
window_set_fullscreen(true);
#endregion
#region macros
#macro indice_der 0
#macro indice_der_parpadeo 1
#macro indice_izq 2
#macro indice_izq_parpadeo 3
#macro sin_fondo -4
#macro zona_hogar 0
#macro zona_campo 1
#macro zona_volcan 2
#macro zona_cielo 3
#macro zona_desierto 4
#macro zona_nevada 5
#macro zona_cueva 6
#macro zona_infierno 7
#macro zona_pesadilla 8
#macro zona_fabrica 9
#endregion

#region partícula
part_sistema = part_system_create();
part_system_depth(part_sistema, 400);
part_type = part_type_create();
part_type_sprite(part_type, sprCC1atkEggFire, true, false, false);
part_type_speed(part_type, 3, 5, 0 ,0);
part_type_size(part_type, 1, 1, 0, 0);
part_type_alpha3(part_type, 1, .75 ,0);
part_type_life(part_type, 16, 16);
part_type_direction(part_type, 90, 90, 0, 0);
#endregion