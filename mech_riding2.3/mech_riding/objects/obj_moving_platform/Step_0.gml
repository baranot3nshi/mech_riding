if (alarm[1] < 0)
{
	//horizontal movement
	if (alarm[0] = -1)
	{
		if (dx > 0)
		{
			 var _start =	(x <= start_x); 
			 var _end =		(x >= dest_x); 
 
 
			 if (_start){ x_dir =  1; } 
			 if (_end)	{ x_dir = -1; } 
 
			 x_spd = real_round((spd * x_dir) * global.dt);
			 x += x_spd;
	
	
			 x = clamp(x, start_x, dest_x); 
		}

		//vertical movement //NOT SUPPORTED

		if (dy > 0)
		{
			 var _start =	(y <= start_y); 
			 var _end =		(y >= dest_y); 
 
 
			 if (_start){ y_dir =  1; } 
			 if (_end)	{ y_dir = -1; } 
 
			 y_spd = real_round((spd * y_dir) * global.dt);
			 y += y_spd;
	
	
			 y = clamp(y, start_y, dest_y); 
		}
	}
}