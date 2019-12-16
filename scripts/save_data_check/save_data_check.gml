///arg (key)

var _save_key = argument0;
var _this_data = ds_map_find_value(obj_SAVE.save_data,_save_key)

show_debug_message("this data is set to: " + string(_this_data));
 
if (_this_data) {return true;}
else			{return false;}

