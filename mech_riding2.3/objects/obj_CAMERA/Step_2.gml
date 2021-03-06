/// @description camera movement
input_get();

var vy = global.view_Y;
var vw = global.view_width;
var vh = global.view_height;

#macro view view_camera[0]

camera_set_view_size(view, vw, vh);

if (instance_exists(follow))
{
	//X
	//clamp to the borders and set the coordinates for the camera (1/2 horizontal, 2/3 vertical)
	var X = clamp(follow.x-vw/2,   0, room_width  - vw);
	
	
	//Y
	//look down input
	
	if (but_down_long)
	{
		look_down_timer += global.dt
		if (look_down_timer > look_down_timer_max){look_down = true}
	} else {look_down = false; look_down_timer = 0}
	
	
	if (look_down && follow.y_spd = 0) {buffer = 100;} else {buffer = 0;}


	//camera going up
	
	var _dest_y = follow.y-vh/4*3+buffer
	
	if (follow.y < vy+vh/4*1)	
	{Y = lerp(Y, clamp(_dest_y, 0, room_height - vh),.075)}
	
	//camera going down
	if (follow.y > vy+vh/4*3-buffer)
	{
		Y = clamp(_dest_y, 0, room_height - vh)
	}
	
	
	
	//resets the camera
	if (follow.y_spd = 0 && follow.y < vy+vh/4*3 && !look_down)
	{
		reset_timer += global.dt
		if (reset_timer > reset_timer_max)
		{Y = lerp(Y, clamp(follow.y-vh/4*3, 0, room_height - vh),.025)}
	}
	else {reset_timer = 0;}
	
	
	
	
	//get "previous" position
	var cur_x = camera_get_view_x(view);
	var cur_y = camera_get_view_y(view);
	
	//lerp speed
	var spd = .12;
	
	//screenshake
	if (global.screenshake_on)
	{
		cur_x += random_range(global.screenshake,-global.screenshake);
		cur_y += random_range(global.screenshake,-global.screenshake);
	
		global.screenshake = lerp(global.screenshake,0,.2)
	}
	
	#region //directional slide
	if (global.screenyank_x != 0 || global.screenyank_y != 0)
	{
		cur_x += global.screenyank_x;
		cur_x += global.screenyank_y;
		
		global.screenyank_x =	lerp(global.screenyank_x,0,.2)
		global.screenyank_y =	lerp(global.screenyank_y,0,.2)
	}
	#endregion
	
	//lerp and save X and Y to globals
	if (!instant)
	{
		global.view_X = lerp(cur_x,X,spd*global.dt)
		global.view_Y = lerp(cur_y,Y,spd*global.dt)
	}
	else
	{
		global.view_X = X;
		global.view_Y = clamp(_dest_y, 0, room_height - vh);
		instant = false;
	}
	//draw camera
	camera_set_view_pos(view, global.view_X,global.view_Y);
}