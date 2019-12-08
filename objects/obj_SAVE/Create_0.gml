global.SAVE = false;
global.LOAD = false;

save_data = ds_map_create();

file_name = "SaveData.sav"

//load data at start game
if (file_exists(file_name)) 
{save_data = ds_map_secure_load(file_name);}