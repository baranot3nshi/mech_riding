
//NEEDS
//fall_spd_max = 5;
//wwight = .3;
//collider = obj_wall;
//grounded = false;
//y_spd = 0;



//apply gravity
if (!grounded)
{
	if (y_spd < fall_spd_max) {y_spd += weight * global.dt;}
	else					  {y_spd = fall_spd_max;}
}


//don't fall through (WALL)
if (place_meeting_array(x, y + y_spd, collider))
{

	while (!place_meeting_array(x, y+sign(y_spd), collider))
	{
		y += sign(y_spd)
	}
	
	y_spd = 0;
}


//don't fall through (PLATFORM)
var _plat = instance_place(x,y+y_spd,obj_platform)
if (place_meeting(x, y + y_spd, obj_platform) && _plat.bbox_top > bbox_bottom && !but_down_long)
{
	while (!place_meeting(x, y + 1, _plat))
	{
		y += sign(y_spd)
	}
	
	y_spd = 0;
	
	//if (_plat.bbox_top < bbox_bottom  && !but_down) {y = _plat.bbox_top - 1;}
}


	y += y_spd*global.dt;
