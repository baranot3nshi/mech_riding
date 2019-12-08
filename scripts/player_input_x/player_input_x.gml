//NEEDS

////X movement vars
//x_spd_max = 2;
//accel = .4; 

//but_right
//but_left

//collider = obj_wall

//check if it's going in the right direction, or stop in front of a wall (failsafe for twintails)
x_dir = but_right - but_left;

if (!place_meeting(x+x_dir, y, collider))
{
	//go right
	if (but_right && x_spd < x_spd_max)
	{
		x_spd += accel * global.dt; 
		//image_xscale = 1;
		dir = 1;
	}

	//go left
	else if (but_left && x_spd > -x_spd_max)
	{
		x_spd -= accel * global.dt; 
		//image_xscale = -1;
		dir = -1;
	}
}

//stop when there's no input
if (x_dir = 0)
{
	x_spd = 0;
}

if (place_meeting(x,y,collider))
{
	x -= dir;
}