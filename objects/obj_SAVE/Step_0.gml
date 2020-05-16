//SAVE
if (global.SAVE)
{
	// saving current room
	save_data[? "room"] =			room;
	
	// saving player's HP and AP
	save_data[? "HP_max"] =			global.HP_max;
	save_data[? "HP"] =				global.HP;

	save_data[? "HP_mech1_max"] =	global.HP_mech1_max;
	save_data[? "HP_mech1"] =		global.HP_mech1;
	
	save_data[? "AP_max"] =			global.AP_max;
	
	// saving inventory
	save_data[? "inventory"] =		ds_grid_write(global.inventory);
	
	// saving map data
	save_data[? "map"] =			ds_list_write(obj_MAP.world_data);
	
	// saving settings data
	save_data[? "settings"] =		ds_grid_write(obj_SETTINGS.setting_menu);
	
	ds_map_secure_save(save_data,save_file);
	
	
	
	// end saving
	show_debug_message("game saved");
	global.SAVE = false;
	
}

//LOAD
if (global.LOAD)
{
	// fade out
	global.screenfreeze = 1;
	global.fade_colour = c_black;
	global.fade_FX_alpha += .2
	instance_create_depth(0,0,0,obj_GAMESTARTER);
	
	// loading save_data ds map from file
	if(!file_exists(save_file)){exit;}
	ds_map_destroy(save_data);
	save_data = ds_map_secure_load(save_file);
	
	// loading player's HP and AP
	global.HP_max =			save_data[? "HP_max"];
	global.HP =				save_data[? "HP"];
	
	global.HP_mech1_max =	save_data[? "HP_mech1_max"];
	global.HP_mech1 =		save_data[? "HP_mech1"];
	
	global.AP_max =			save_data[? "AP_max"];
	
	// loading inventory
	var _inventory_load =	save_data[? "inventory"];
	ds_map_read(global.inventory, _inventory_load);
	
	// loading map data
	var _map_load =	save_data[? "map"];
	ds_map_read(obj_MAP.world_data, _map_load);
	
	// loading save_room
	var _room_load =		save_data[? "room"];
	room_goto(_room_load);
	
	// loading options data
	var _settings_load = save_data[? "settings"];
	ds_map_read(obj_SETTINGS.setting_menu, _settings_load);
	
	//creating player
	var _new_player = instance_create_depth(room_width/2,room_height/2,0,obj_player)
	if (object_exists(obj_player)){instance_destroy(_new_player)}
	
	
	// end loading
	show_debug_message("game loaded");
	global.LOAD = false;
}