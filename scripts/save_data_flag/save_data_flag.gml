///@arg save_key
///@arg flag

//saves the flag as anything (used for non on/off switch flags)

var _save_key = argument0;
ds_map_replace(obj_SAVE.save_data,_save_key,argument1);

show_debug_message("save key set to: " + string(save_key))