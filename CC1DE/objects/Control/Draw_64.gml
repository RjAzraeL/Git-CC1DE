#region Dibujar
if (debug)
{
	draw_text(16,16,"stylevar:" + string(ceil(StyleVariable)));
	draw_text(16,32,"x:" + string(objCamera.x));
	draw_text(16,48,"y:" + string(objCamera.y));
	draw_text(16,64,"enemies:" + string(instance_number(parEnemy)));
	draw_text(16,80,"coins:" + string(instance_number(objCoin)));
}
#endregion