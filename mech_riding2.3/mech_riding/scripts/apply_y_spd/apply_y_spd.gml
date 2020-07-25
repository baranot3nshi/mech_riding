///@arg0 x_spd
function apply_y_spd(argument0) {

	var spd = argument0;

	//apply arg to obj's Y

	if (!place_meeting_array(x,y+spd,collider))
	{
		y += spd*global.dt;
		colliding = false;
	}
	else
	{
		while (!place_meeting_array(x , y+sign(spd), collider))
		{
			y += sign(spd);
		}
	
		spd = 0;
		colliding = true;
	}


}
