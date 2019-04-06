//NEEDS
//can_move = true;
//x_spd = 0;
//y_spd = 0;

////X movement vars
//x_spd_max = 2;
//accel = .4; 
//frict = .8;

////Y movement vars
//weight = .3;
//fall_spd_max = 5;


#region horizontal movement
if (can_move)
{
	//go right
	if (but_right && x_spd < x_spd_max && !place_meeting(x+1, y, collider))
	{
		x_spd += accel; 
		image_xscale = 1;
		dir = 1;
		
		jetpack_FX_offset = -5;
	}

	//go left
	else if (but_left && x_spd > -x_spd_max && !place_meeting(x-1, y, collider))
	{
		x_spd -= accel; 
		image_xscale = -1;
		
		jetpack_FX_offset = +4;
	}

	//stop when there's no input
	if (!but_right && !but_left)
	{
		//if (x_spd != 0)	{x_spd -= sign(x_spd)*frict;}
		x_spd = 0;
		dir = -1;
	}

	//apply movement to player
	if (!place_meeting(x+x_spd,y,collider))
	{
		x += x_spd;
	}
	else
	{
		while (!place_meeting(x +sign(x_spd), y, obj_wall))
		{
			x += sign(x_spd)
		}
		x_spd = 0;
	}
}
#endregion
#region vertical movement (falling and resetting jumps)
//falling
if (state != states.on_ground && y_spd < fall_spd_max)
{
	y_spd += weight;
}
//apply movement
if (!place_meeting(x,y+y_spd,obj_wall))
{
	y += y_spd
}
else //don't fall through
{
	move_contact_solid(point_direction(x,y,x,y+y_spd),fall_spd_max);
	y_spd = 0;
}
#endregion

#region//inside wall failsafe
if (place_meeting (x,y,obj_wall))
{
	x -= dir
}
#endregion