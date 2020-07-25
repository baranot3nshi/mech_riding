///@arg save_key
function save_data_flag_off(argument0) {

	//sets the on/off flag for this key to off and saves it

	var _save_key = argument0;
	ds_map_replace(obj_SAVE.save_data,_save_key,false);

	show_debug_message("save key set to false: " + string(_save_key))


}
