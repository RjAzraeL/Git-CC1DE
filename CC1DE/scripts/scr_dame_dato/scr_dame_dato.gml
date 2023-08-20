function scrDataGet(Lista , Posicion , Llave)
{
	return ds_list_find_value(Lista , Posicion)[? string(Llave)];
}

function scrListValue(Lista, Valor)
{
	if (ds_list_find_index(Lista , Valor) == -1)
	{
		return false;
	}
	return true;
}