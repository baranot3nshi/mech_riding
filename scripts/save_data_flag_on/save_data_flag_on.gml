///@arg save_key
var _save_key = argument0;
ds_map_replace(obj_SAVE.save_data,_save_key,true);

show_debug_message("save key set to true: " + string(save_key))