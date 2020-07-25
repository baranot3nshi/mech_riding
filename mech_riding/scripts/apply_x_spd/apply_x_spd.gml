///@arg0 x_spd

var spd = argument0;

//apply arg to obj's X
var added_spd = 0;

//MOVING PLATFORM COLLISION
var _plat = instance_place(x,y+1,obj_moving_platform)
if (place_meeting(x,y+1,obj_moving_platform))
{
	x = x+_plat.x_spd
	var _plat_spd = _plat.x_spd
}
else _plat_spd = 0;


if (!place_meeting_array(x+spd,y,collider))
{
	if (spd = 0) {var added_spd = spd}
	else {added_spd = spd - _plat_spd}
	
	x += added_spd*global.dt;
	
	colliding = false;
}
else
{
	while (!place_meeting_array(x +sign(spd), y, collider))
	{
		x += sign(spd);
	}
	
	spd = 0;
	colliding = true;
}
