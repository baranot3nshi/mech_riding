depth = -5000;

minimap = true;

draw_area_width = 7;
draw_area_height = 4;

w_goal = draw_area_width;
h_goal = draw_area_height;

player_pos_x = 0;
player_pos_y = 0;


center_x = global.view_width - draw_area_width/2*mtw - 15;
center_y = draw_area_height/2*mtw + 20;
cx_goal = center_x
cy_goal = center_y

//full screen coords
map_full_w = global.view_width/mtw - 4
map_full_h = global.view_height/mtw - 4

map_full_cx	= global.view_width/2;
map_full_cy = global.view_height/2;

surf_map = surface_create(global.view_width,global.view_height);


mini_w  = w_goal;
mini_h  = h_goal;
mini_cx = cx_goal;
mini_cy = cy_goal;

#region//maps info enums
enum door {
	xx,
	yy,
	angle,
	type
}

enum door_angle {
	N = 0,
	E = 270,
	S = 180,
	W = 90
}

enum door_type {
	normal,
	missile
}

enum map_state {
	uncharted,
	charted,
	explored
}
#endregion

//create the ds_list
world_data = ds_list_create();

//map id							x		y		doors			x	y	rotation		type
add_room(rm_mapping_test1,			5,		0,		create_array_4(	0,	0,	door_angle.E,	door_type.normal))

add_room(rm_mapping_test2,			6,		0,		create_array_4(	0,	0,	door_angle.W,	door_type.normal),
													create_array_4(	0,	1,	door_angle.W,	door_type.normal),
													create_array_4(	0,	1,	door_angle.E,	door_type.normal))
													
add_room(rm_mapping_test3,			4,		1,		create_array_4(	1,	0,	door_angle.E,	door_type.normal),
													create_array_4(	0,	0,	door_angle.W,	door_type.normal))
													
add_room(rm_mapping_test4,			7,		1,		create_array_4(	0,	0,	door_angle.W,	door_type.normal))

add_room(rm_mapping_test5,			0,		1,		create_array_4(	3,	0,	door_angle.E,	door_type.normal))