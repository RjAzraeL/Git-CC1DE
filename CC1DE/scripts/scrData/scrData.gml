function scrData()
{
	scrDataChicken();
}

function scrDataChicken()
{
	DataChicken = ds_list_create();
	/*00*/scrMapListChicken("Pollier" , "" , 0 , scrListMaker(sprCC1skinPollier,sprCC1RskinPollier) );
	/*01*/scrMapListChicken("Chica" , "" , 0 , scrListMaker(sprCC1skinChica,sprCC1RskinChica) );
	/*02*/scrMapListChicken("Zombie" , "" , 0 , scrListMaker(sprCC1skinZombie,sprCC1RskinZombie) );
	/*03*/scrMapListChicken("Voltio" , "" , 0 , scrListMaker(sprCC1skinVoltio,sprCC1RskinVoltio) );
	/*04*/scrMapListChicken("Armor" , "" , 0 , scrListMaker(sprCC1skinArmor,sprCC1RskinArmor) );
	/*05*/scrMapListChicken("Zeo" , "" , 0 , scrListMaker(sprCC1skinZeo,sprCC1RskinZeo) );
	/*06*/scrMapListChicken("Jhonatan" , "" , 0 , scrListMaker(sprCC1skinJhonatan,sprCC1RskinJhonatan) );
	/*07*/scrMapListChicken("Mega" , "" , 0 , scrListMaker(sprCC1skinDinami,sprCC1RskinDinami) );
	/*08*/scrMapListChicken("Iris" , "" , 0 , scrListMaker(sprCC1skinIris,sprCC1RskinIris) );
	/*09*/scrMapListChicken("Porky" , "" , 0 , scrListMaker(sprCC1skinPorki,sprCC1RskinPorki) );
}

function scrMapChicken(List)
{
	var Pack = ds_map_create();
	Pack[?"Name"] = ds_list_find_value(List , 0);
	Pack[?"Description"] = ds_list_find_value(List , 1);
	Pack[?"Price"] = ds_list_find_value(List , 2);
	Pack[?"Sprite"] = ds_list_find_value(List , 3);
}
function scrMapListChicken(Name , Description , Price , Sprite)
{
	scrMapChicken( scrListMaker(Name , Description , Price , Sprite) );
}

function scrChickenGet(Value , String)
{
	scrDataGet(Control.DataChicken , Value , String);
}