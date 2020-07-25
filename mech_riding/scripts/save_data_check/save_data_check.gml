///arg (key)

// returns the data stored in the save data under the specified key


var _save_key = argument0;
var _this_data = ds_map_find_value(obj_SAVE.save_data,_save_key)

show_debug_message(string(_save_key) + " is set to: " + string(_this_data));
 
return _this_data;

