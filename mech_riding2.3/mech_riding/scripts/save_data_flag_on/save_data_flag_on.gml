///@arg save_key
function save_data_flag_on(argument0) {

	//sets the on/off flag for this key to and saves it

	var _save_key = argument0;
	ds_map_replace(obj_SAVE.save_data,_save_key,true);

	show_debug_message("save key set to true: " + string(save_key))


}
