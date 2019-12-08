//SAVE
if (global.SAVE)
{
	ds_map_secure_save(save_data,file_name);
	global.SAVE = false;
}

//LOAD
if (global.SAVE)
{
	//LOADING CODE
	global.LOAD = false;
}