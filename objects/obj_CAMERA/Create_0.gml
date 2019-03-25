/// @description init
camera_size = 6 //the smaller the bigger amount of room will be visible

global.view_width = 1920/camera_size;
global.view_height = 1080/camera_size;

var vw = global.view_width;
var vh = global.view_height;

window_scale = 4;

window_set_size(vw*window_scale, vh*window_scale);
alarm[0] = 1;

surface_resize(application_surface, vw*window_scale, vh*window_scale);

follow = obj_player;
