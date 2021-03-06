function move_h_nme(argument0) {
	//REQUIRES IN CREATE EVENT:
	//dir = 1; //1 = right, -1 = left
	//x_spd = 0;
	//x_spd_max = 1;
	//collider = obj_wall;
	//accel = .1;

	var x_spd = argument0;


	//go right
	if (dir = 1 && x_spd < x_spd_max && !place_meeting(x+1, y, collider))
	{
		x_spd += accel; 
		image_xscale = 1;
	}

	//go left
	else if (dir = -1 && x_spd > -x_spd_max && !place_meeting(x-1, y, collider))
	{
		x_spd -= accel; 
		image_xscale = -1;
	}


	//apply movement to enemy
	if (!place_meeting(x+x_spd,y,collider))
	{
		x += x_spd * global.dt;
	}
	else
	{
		while (!place_meeting(x +sign(x_spd), y, obj_wall))
		{
			x += sign(x_spd)
		}
		x_spd = 0;
	}

	if (place_meeting(x+x_spd,y,collider))
	{
		dir = -dir;
	}

#region//inside wall failsafe
	if (place_meeting (x,y,obj_wall))
	{
		x_spd = 0;
		x += dir*2;
	}
#endregion


}
