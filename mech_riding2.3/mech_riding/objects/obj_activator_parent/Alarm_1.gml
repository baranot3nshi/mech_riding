///@descr open_forever check
if (open_forever)
{
	var _data_check = save_data_check(save_key);
	
	if (_data_check != undefined)
	{state = save_data_check(save_key);}
}