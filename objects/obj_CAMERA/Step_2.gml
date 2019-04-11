/// @description camera movement

var vw = global.view_width;
var vh = global.view_height;

#macro view view_camera[0]

camera_set_view_size(view, vw, vh);

if (instance_exists(follow))
{
	//clamp to the borders and set the coordinates for the camera (1/2 horizontal, 2/3 vertical)
	var X = clamp(follow.x-vw/2,   0, room_width  - vw);
	var Y = clamp(follow.y-vh/3*2, 0, room_height - vh);
	
	//get "previous" position
	var cur_x = camera_get_view_x(view);
	var cur_y = camera_get_view_y(view);
	
	//lerp speed
	var spd = .12;
	
	//screenshake
	cur_x += random_range(global.screenshake,-global.screenshake);
	cur_y += random_range(global.screenshake,-global.screenshake);
	
	global.screenshake = lerp(global.screenshake,0,.2)
	
	//save X and Y to globals
	global.view_X = lerp(cur_x,X,spd)
	global.view_Y = lerp(cur_y,Y,spd)
	
	//draw camera
	camera_set_view_pos(view, global.view_X,global.view_Y);
}