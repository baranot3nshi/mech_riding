//SAVE
if (global.SAVE)
{
	// saving current room
	ds_map_replace(save_data, "room", room)
	
	// saving player's HP and AP
	ds_map_replace(save_data, "HP_max", global.HP_max)
	ds_map_replace(save_data, "HP", global.HP)
	
	ds_map_replace(save_data, "HP_mech1_max", global.HP_mech1_max)
	ds_map_replace(save_data, "HP_mech1", global.HP_mech1)
	
	ds_map_replace(save_data, "AP_max", global.AP_max)

	
	// saving inventory
	var _inventory_save = ds_grid_write(global.inventory);
	ds_map_replace(save_data, "inventory", _inventory_save)
	
	ds_map_secure_save(save_data,file_name);
	
	
	
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
	if(!file_exists(file_name)){exit;}
	ds_map_destroy(save_data);
	save_data = ds_map_secure_load(file_name);
	
	// loading player's HP and AP
	global.HP_max = ds_map_find_value(save_data, "HP_max")
	global.HP = ds_map_find_value(save_data, "HP")
	
	global.HP_mech1_max = ds_map_find_value(save_data, "HP_mech1_max")
	global.HP_mech1 = ds_map_find_value(save_data, "HP_mech1")
	
	global.AP_max = ds_map_find_value(save_data, "AP_max")
	
	// loading inventory
	var _inventory_load = ds_map_find_value(save_data, "inventory");
	ds_map_read(global.inventory, _inventory_load);
	
	// loading save_room
	var _room_load = ds_map_find_value(save_data, "room");
	room_goto(_room_load);
	
	//creating player
	var _new_player = instance_create_depth(room_width/2,room_height/2,0,obj_player)
	if (object_exists(obj_player)){instance_destroy(_new_player)}
	
	
	
	// end loading
	show_debug_message("game loaded");
	global.LOAD = false;
}