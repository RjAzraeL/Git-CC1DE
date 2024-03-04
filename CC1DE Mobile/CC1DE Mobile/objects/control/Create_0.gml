#region variables
scr_data();
estilo_viejo = 1;
zona_actual = 0;
estilo_actual = 0;
vida = 5;
resolucion_ancho = 854;
resolucion_alto = 480;
rango = 900;
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