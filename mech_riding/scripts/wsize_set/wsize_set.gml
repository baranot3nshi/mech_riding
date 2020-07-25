with (obj_CAMERA)
{
	window_scale = argument0;

	var vw = global.view_width;
	var vh = global.view_height;

	window_set_size(vw*window_scale, vh*window_scale);
	alarm[0] = 1;

	surface_resize(application_surface, vw*window_scale, vh*window_scale);
}