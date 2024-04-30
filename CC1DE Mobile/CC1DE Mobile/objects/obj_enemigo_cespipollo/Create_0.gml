#region variable
event_inherited();
poder_disparo = true;
poder_disparo_objeto = obj_poder_enemigo_shuriken;
poder_disparo_doble = true;
poder_enfriamiento_total = 120;
spr_cc1 = sprCC1zn1Enemie2;
spr_cc2 = sprCCRzn1Enemie2;
spr_cc3 = sprSCCzn1Enemie2;
scr_estilo_enemigo2();
if (control.zona_actual == 4) /*Disparo de zona desértica*/
{
	poder_velocidad = 3;
}
#endregion