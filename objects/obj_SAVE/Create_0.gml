#region HOW SAVING WORKS
//some objects are set to change permanently, 
//or react to different information in the save data when interacted with.

//Whenever you change something permanently in a room, the change is logged in the ds_map save_data.
//When you save the game, that ds_map is saved on the savedata.sav file.

//When loading a game, that save data is relogged from the file to the save_data ds_map,
//and the instances read from that file and set themselves to the right version of themselves.

#endregion

global.SAVE = false;
global.LOAD = false;

save_data = ds_map_create();

save_file = "SaveData.sav"

//load data at start game
if (file_exists(save_file)) 
{save_data = ds_map_secure_load(save_file);}



#region GAME DATA TO BE LOADED

//player health ---
//inventory ---

//map info ---
//latest savepoint

//played time
//latest save time

#endregion