/// @desc Si existe el objeto devuelve verdadero
/// @arg objeto
function scrExist(objeto)
{
	if (objeto == undefined)
	{
		return false;
	}
	if (instance_number(objeto) !=0)
	{
		return true;
	}
	else 
	{
		return false;
	}
}