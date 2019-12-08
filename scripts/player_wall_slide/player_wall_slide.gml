var _vert_wall_R = instance_place(x+1,y,obj_wall_slide)
var _vert_wall_L = instance_place(x-1,y,obj_wall_slide)

if ((_vert_wall_R && but_right) || 
	(_vert_wall_L && but_left ))
{
	state = states.wall_slide;
	
	if (_vert_wall_R && but_right)	{sliding = "right";}
	if (_vert_wall_L && but_left)	{sliding = "left";}
	jump_number = 1;
	wall_slide_timer = 0;
}