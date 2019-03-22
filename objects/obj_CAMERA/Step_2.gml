/// @description

var vw = global.view_width;
var vh = global.view_height;

#macro view view_camera[0]

camera_set_view_size(view, vw, vh);

if (instance_exists(follow))
{
	var X = clamp(follow.x-vw/2,   0, room_width  - vw);
	var Y = clamp(follow.y-vh/3*2, 0, room_height - vh);
	
	
	var cur_x = camera_get_view_x(view);
	var cur_y = camera_get_view_y(view);
	
	var spd = .12;
	
	camera_set_view_pos(view,
						lerp(cur_x,X,spd),
						lerp(cur_y,Y,spd));
}