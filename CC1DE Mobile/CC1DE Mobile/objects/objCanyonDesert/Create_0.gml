#region variable
spr_cc1 = sprCC1resCanyonDesert;
spr_cc2 = sprCCRresCanyonDesert;
spr_cc3 = sprSCCresCanyon;
angulo_real = 0;
escala_x_real = 1;
escala_y_real = 1;
rango = 360;
objetivo = obj_jugador;
disparo = 75;
disparo_total = 100;
velocidad = 8;
if (control.zona_actual == zona_fabrica)
{
	spr_cc1 = sprCC1resCanyon;
	spr_cc2 = sprCCRresCanyon;
	spr_cc3 = sprSCCresCanyon;
}
#endregion














