function scr_dame_dato(Lista , Posicion , Llave)
{
	return ds_list_find_value(Lista , Posicion)[? string(Llave)];
}

function scr_valor_en_lista(Lista, Valor)
{
	if (ds_list_find_index(Lista , Valor) == -1)
	{
		return false;
	}
	return true;
}