function scrData()
{
	scrDataChicken();
}

function scrDataChicken()
{
	DataChicken = ds_list_create();
	/*00*/scrMapListChicken("Pollier" , "" , 0 , scrListMaker(sprCC1skinPollier,sprCC1RskinPollier) , 0);
	/*01*/scrMapListChicken("Chica" , "" , 0 , scrListMaker(sprCC1skinChica,sprCC1RskinChica) , 0);
	/*02*/scrMapListChicken("Zombie" , "" , 0 , scrListMaker(sprCC1skinZombie,sprCC1RskinZombie) , 0);
	/*03*/scrMapListChicken("Voltio" , "" , 0 , scrListMaker(sprCC1skinVoltio,sprCC1RskinVoltio) , .5);
	/*04*/scrMapListChicken("Armor" , "" , 0 , scrListMaker(sprCC1skinArmor,sprCC1RskinArmor)  , 0);
	/*05*/scrMapListChicken("Zeo" , "" , 0 , scrListMaker(sprCC1skinZeo,sprCC1RskinZeo) , 0);
	/*06*/scrMapListChicken("Jhonatan" , "" , 0 , scrListMaker(sprCC1skinJhonatan,sprCC1RskinJhonatan) , 0);
	/*07*/scrMapListChicken("Mega" , "" , 0 , scrListMaker(sprCC1skinDinami,sprCC1RskinDinami)  , .5);
	/*08*/scrMapListChicken("Iris" , "" , 0 , scrListMaker(sprCC1skinIris,sprCC1RskinIris)  , 0);
	/*09*/scrMapListChicken("Porky" , "" , 0 , scrListMaker(sprCC1skinPorki,sprCC1RskinPorki)  , 0);
}

function scrMapChicken(List)
{
	var Pack = ds_map_create();
	Pack[?"Name"] = ds_list_find_value(List , 0);
	Pack[?"Description"] = ds_list_find_value(List , 1);
	Pack[?"Price"] = ds_list_find_value(List , 2);
	Pack[?"Sprite"] = ds_list_find_value(List , 3);
	Pack[?"Animated"] = ds_list_find_value(List , 4);
	ds_list_add(Control.DataChicken , Pack);
}
function scrMapListChicken(Name , Description , Price , Sprite , Animated)
{
	return scrMapChicken( scrListMaker(Name , Description , Price , Sprite , Animated) );
}

function scrChickenGet(Value , String)
{
	return scrDataGet(Control.DataChicken , Value , String);
}