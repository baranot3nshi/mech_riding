//SAVE
if (global.SAVE)
{
	ds_map_secure_save(save_data,file_name);
	
		show_debug_message("game saved");
	global.SAVE = false;
	
}

//LOAD
if (global.LOAD)
{
	//INSERT LOADING CODE HERE
	
	
	show_debug_message("game loaded");
	global.LOAD = false;
}