input_get();

if (!but_AIM_charge) 
{
	instance_destroy(); 
}

depth = -100;

//MOVEMENT
x_dir = but_right - but_left;
y_dir = but_down - but_up;

dir = point_direction(obj_drone.x,obj_drone.y,obj_drone.x+x_dir,obj_drone.y+y_dir)

if (x_dir != 0 || y_dir != 0)
{

	len_x = lengthdir_x(len,dir)
	len_y = lengthdir_y(len,dir)
	
}

x = obj_drone.x + len_x;
y = obj_drone.y + len_y;