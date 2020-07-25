///@arg rm_id
///@arg xx
///@arg yy
///@arg [door1,door2,door3...]

var	_rm_id	 = argument[0];
var	_xx		 = argument[1];
var	_yy		 = argument[2];


var _room_data = ds_map_create();

//=== define simple data ===//
_room_data[? "id"]		= _rm_id;
_room_data[? "xx"]		= _xx;
_room_data[? "yy"]		= _yy;
_room_data[? "state"]	= map_state.uncharted;

//=== calculate width and length of the room ===//
//get the size of the room in tiles
var _camera = room_get_camera(_rm_id, 1);
var _width = camera_get_view_width(_camera)/(tw*sw);
var _height = camera_get_view_height(_camera)/(tw*sh);

//populate the ds_map with room info
_room_data[? "height"]	= _height;
_room_data[? "width"]	= _width;


//=== add doors data ===//
if (argument_count > 3)
{
	var _doors = ds_list_create();

	var i = 0; repeat(argument_count-3)
	{
		ds_list_add(_doors, argument[i+3])
		i++;
	}
	
	_room_data[? "doors"] = _doors;
}

//=== add to map data ===//
ds_list_add(world_data, _room_data);
ds_list_mark_as_map(world_data, ds_list_size(world_data) - 1);