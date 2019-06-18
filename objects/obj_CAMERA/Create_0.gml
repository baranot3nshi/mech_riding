/// @description init
camera_size = 5 //the smaller the bigger amount of room will be visible (STANDARD = 6)

global.view_width = 1920/camera_size;
global.view_height = 1080/camera_size;

var vw = global.view_width;
var vh = global.view_height;

window_scale = 4;

window_set_size(vw*window_scale, vh*window_scale);
alarm[0] = 1;

surface_resize(application_surface, vw*window_scale, vh*window_scale);
display_set_gui_size(vw,vh)

follow = obj_player;

global.screenshake = 0;

	global.view_X = 0
	global.view_Y = 0
	
	X = 0;
	Y = 0;
	look_down = false;
	reset_timer = 0;
	reset_timer_max = 20;
	
	look_down_timer = 0;
	look_down_timer_max = 20;
	buffer = 0;
	depth = -500